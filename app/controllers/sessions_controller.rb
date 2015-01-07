class SessionsController < ApplicationController
skip_before_filter :authorize, only: [:new, :create]
skip_before_filter :owner_verification

  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
