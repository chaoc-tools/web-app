class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate
  before_filter :authorize
  before_filter :owner_verification


  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  def owner_verification
   redirect_to new_owner_verification_path unless current_user.property_owner
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["HT_USR"] && password == ENV["HT_PWD"]
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end
