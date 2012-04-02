class ShoutsController < ApplicationController
  before_filter :authorize, only: [:create]
  def create
    @shout = current_user.shouts.new(params[:shout])
    @shout.save
    redirect_to dashboard_path
  end

  def show
    @shout = Shout.find(params[:id])
  end
end
