class ShoutsController < ApplicationController
  def create
    text_medium = TextMedium.new(params[:text_medium])
    shout = current_user.shouts.new
    shout.medium = text_medium
    shout.save
    redirect_to dashboard_path
  end
end
