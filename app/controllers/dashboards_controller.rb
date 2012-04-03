class DashboardsController < ApplicationController
  before_filter :authorize
  def show
    @shout = Shout.new
    @timeline = current_user.shout_timeline
  end
end
