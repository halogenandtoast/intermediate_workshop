class WelcomeController < ApplicationController
  before_filter :check_for_user
  def index
  end

  private

  def check_for_user
    if signed_in?
      redirect_to dashboard_path
    end
  end
end
