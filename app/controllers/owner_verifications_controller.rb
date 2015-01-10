class OwnerVerificationsController < ApplicationController

  skip_before_filter :owner_verification

  def index
  end

  def new
    @owner_verification = OwnerVerification.new
  end

  def create
  require 'watir-webdriver'
  require 'headless'
  headless = Headless.new
  browser = Watir::Browser.start OwnerVerification::SEARCH_FORM
  browser.text_field(:name => 'edt_last').when_present.set params[:owner_verification][:ch_last_name]
  browser.text_field(:name => 'edt_first').when_present.set params[:owner_verification][:ch_first_name]
  # binding.pry
  # add select of brooklyn borough
  # select of current date range?
  browser.button(:value => 'Search').click
  # wait until next page loads
  # need conditional here for if no matches were found
  detail_buttons = browser.buttons(:value => 'DET')
  detail_buttons.first.click
  page_text = browser.text
  valid_address?(page_text)
      
    if current_user.property_owner
      redirect_to @owner_verification, notice: 'User was verified as an owner.'
    else
      render :new, notice: 'Sorry, this does not seem to be a property owner'
    end
  end

  def show
  end

  def valid_address?(text)
    OwnerVerification::VALID_PROPERTY_ADDRESSES.each do |address|
      current_user.property_owner = true if text.include? address
    end
    false
  end

end