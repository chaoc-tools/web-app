class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])

    if @user.save
      redirect_to root_url, notice: "Thank you for signing up!"      
    else
      render "new"
    end
  end

  def edit
    
  end

  def update
    
  end

  def delete
    
  end


end