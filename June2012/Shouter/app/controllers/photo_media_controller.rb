class PhotoMediaController < ApplicationController
  def create
    photo_medium = PhotoMedium.new(params[:photo_medium])
    shout = current_user.shouts.new
    shout.medium = photo_medium
    shout.save
    redirect_to dashboard_path
  end
end
