class OwnerVerificationsController < ApplicationController

  skip_before_filter :owner_verification

  def index
  end

  def new
    @owner_verification = OwnerVerification.new
  end

  def create
  # require 'watir-webdriver'
  # # require 'headless'
  # # headless = Headless.new
  # # headless.start
  # browser = Watir::Browser.new :phantomjs
  # browser.goto OwnerVerification::SEARCH_FORM
  # browser.text_field(:name => 'edt_last').when_present.set params[:owner_verification][:ch_last_name]
  # browser.text_field(:name => 'edt_first').when_present.set params[:owner_verification][:ch_first_name]
  # # binding.pry
  # # add select of brooklyn borough
  # # select of current date range?
  # browser.button(:value => 'Search').click
  # # wait until next page loads
  # # need conditional here for if no matches were found
  # detail_buttons = browser.buttons(:value => 'DET')
  # detail_buttons.first.click
  # page_text = browser.text
  # browser.close
  # # headless.destroy
  # valid_address?(page_text)
      
    # if current_user.property_owner
    #   redirect_to root_path, notice: 'User was verified as an owner.'
    # else
    #   render :new, notice: 'Sorry, this does not seem to be a property owner'
    # end

    @owner_verification = OwnerVerification.new(owner_verification_params)

    respond_to do |format|
      if @owner_verification.save
        format.html { redirect_to @owner_verification, notice: 'Owner verification was successfully created.' }
        # format.json { render :show, status: :created, location: @owner_verification }
      else
        format.html { render :new }
        # format.json { render json: @annual_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def valid_address?(text)
    OwnerVerification::VALID_PROPERTY_ADDRESSES.each do |address|
      if text.include? address
        current_user.property_owner = true
        current_user.save
      end
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    # def set_owner_verification
    #   @annual_meeting = AnnualMeeting.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_verification_params
      params.require(:owner_verification).permit(:year, :ch_first_name, :ch_mi, :ch_last_name, :ch_building_number )
    end
end