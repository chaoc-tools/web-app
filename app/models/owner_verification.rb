p# == Schema Information
#
# Table name: owner_verifications
#
#  id                 :integer          not null, primary key
#  ch_first_name      :string(255)
#  ch_mi              :string(255)
#  ch_last_name       :string(255)
#  ch_building_number :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class OwnerVerification < ActiveRecord::Base
  VALID_BUILDING_NUMBERS = [195,201,325,345,361,365]
   VALID_PROPERTY_ADDRESSES = [
    "325 CLINTON AVE",
    "345 CLINTON AVE",
    "355 CLINTON AVE",
    "361 CLINTON AVE",
    "365 CLINTON AVE"
  ]

  validates :ch_first_name, :presence => true
  validates :ch_last_name, :presence => true
  validates :ch_building_number, :presence => true, :numericality => {:only_integer => true}, :length => {:is => 3}, :inclusion => {:in => VALID_BUILDING_NUMBERS }

  SEARCH_FORM = "https://a836-acris.nyc.gov/DS/DocumentSearch/PartyName"

  def valid_address?(text)
    OwnerVerification::VALID_PROPERTY_ADDRESSES.each do |address|
      if text.include? address
        current_user.property_owner = true
        current_user.save
      end
    end
  end

  def run_verification
    require 'watir-webdriver'
  # require 'headless'
  # headless = Headless.new
  # headless.start
    browser = Watir::Browser.new :phantomjs
    browser.goto OwnerVerification::SEARCH_FORM
    browser.text_field(:name => 'edt_last').when_present.set(self.ch_last_name)
    browser.text_field(:name => 'edt_first').when_present.set(self.ch_first_name)
  # binding.pry
  # add select of brooklyn borough
  # select of current date range?
    browser.button(:value => 'Search').click
  # wait until next page loads
  # need conditional here for if no matches were found
    detail_buttons = browser.buttons(:value => 'DET')
    detail_buttons.first.click
    page_text = browser.text
    browser.close
  # headless.destroy
    valid_address?(page_text)

  end

 
end
