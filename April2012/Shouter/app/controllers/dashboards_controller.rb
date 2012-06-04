class DashboardsController < ApplicationController
  before_filter :authorize
  def show
    @text_shout = TextShout.new
    @photo_shout = PhotoShout.new
    @timeline = current_user.shout_timeline
  end
end
