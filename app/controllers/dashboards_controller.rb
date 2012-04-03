class DashboardsController < ApplicationController
  before_filter :authorize
  def show
    @shout = Shout.new
    @shouts = current_user.timeline_shouts
  end
end
