class DashboardsController < ApplicationController
  before_filter :authorize
  def show
    @shout = TextShout.new
    @timeline = current_user.shout_timeline
  end
end
