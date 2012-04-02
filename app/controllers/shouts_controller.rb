class ShoutsController < ApplicationController
  def create
    @shout = current_user.shouts.new(params[:shout])
    @shout.save
    redirect_to dashboard_path
  end
end
