class PhotoShoutsController < ApplicationController
  before_filter :authorize, only: [:create]
  def create
    @photo_shout = PhotoShout.new(params[:photo_shout])
    @shout = current_user.shouts.new(medium: @photo_shout)
    @shout.save
    redirect_to dashboard_path
  end
end
