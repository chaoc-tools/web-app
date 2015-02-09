class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      redirect_to root_url, notice: "Thank you for signing up!"      
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
     respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Annual meeting was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  # def set_annual_meeting
  #   @annual_meeting = AnnualMeeting.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :admin)
  end


end