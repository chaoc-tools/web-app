class OwnerVerificationController < ApplicationController

  skip_before_filter :owner_verification, only: :new

  def new
  end

  def show
  end
end
