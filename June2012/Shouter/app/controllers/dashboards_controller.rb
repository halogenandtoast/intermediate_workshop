class DashboardsController < ApplicationController
  def show
    @text_medium = TextMedium.new
    @photo_medium = PhotoMedium.new
    @shouts = current_user.shouts.current
  end
end
