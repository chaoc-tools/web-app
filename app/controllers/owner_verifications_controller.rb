class OwnerVerificationsController < ApplicationController

  skip_before_filter :owner_verification

  def index
  end

  def new
    @owner_verification = OwnerVerification.new
  end

  def create
    @owner_verification = OwnerVerification.new(owner_verification_params)

    respond_to do |format|
      if @owner_verification.save
        # self.run_verification
         format.html { redirect_to @owner_verification, notice: 'Owner verification info was saved.' }

        # if current_user.property_owner
        #   redirect_to root_path, notice: 'User was verified as an owner.'
        # else
        #   render :new, notice: 'Sorry, this does not seem to be a property owner'
        # end
        # format.html { redirect_to @owner_verification, notice: 'Owner verification info was saved.' }
        # # format.json { render :show, status: :created, location: @owner_verification }
      else
        format.html { render :new }
        # format.json { render json: @annual_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @owner_verification = OwnerVerification.find(params[:id])
  end

  # def valid_address?(text)
  #   OwnerVerification::VALID_PROPERTY_ADDRESSES.each do |address|
  #     if text.include? address
  #       current_user.property_owner = true
  #       current_user.save
  #     end
  #   end
  # end

  private

    # Use callbacks to share common setup or constraints between actions.
    # def set_owner_verification
    #   @annual_meeting = AnnualMeeting.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_verification_params
      params.require(:owner_verification).permit(:ch_first_name, :ch_mi, :ch_last_name, :ch_building_number )
    end
end