class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
  end
end
