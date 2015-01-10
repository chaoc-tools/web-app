class OwnerVerificationsController < ApplicationController

  skip_before_filter :owner_verification, only: :new

  def index
  end

  def new
    @owner_verification = OwnerVerification.new
    # on submit of form
    # call run_verification
    # display please wait message or page
  end

  def show
  end

end