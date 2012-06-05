class DashboardsController < ApplicationController
  def show
    @text_medium = TextMedium.new
    @photo_medium = PhotoMedium.new
    @shout_timeline = current_user.shout_timeline
    @followed_users = current_user.followed_users
  end
end
