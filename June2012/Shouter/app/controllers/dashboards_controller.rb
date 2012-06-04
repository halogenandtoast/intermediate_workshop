class DashboardsController < ApplicationController
  def show
    @text_medium = TextMedium.new
    @shouts = current_user.shouts.current
  end
end
