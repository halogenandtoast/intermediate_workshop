class WelcomeController < ApplicationController
  before_filter :redirect_to_dashboard_when_signed_in
  def index
    @user = User.new
  end

  private
  def redirect_to_dashboard_when_signed_in
    redirect_to dashboard_path if signed_in?
  end
end
