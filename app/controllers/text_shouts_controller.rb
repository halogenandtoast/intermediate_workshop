class TextShoutsController < ApplicationController
  before_filter :authorize, only: [:create]
  def create
    @text_shout = TextShout.new(params[:text_shout])
    @shout = current_user.shouts.new(medium: @text_shout)
    @shout.save
    redirect_to dashboard_path
  end

  def show
    @shout = Shout.find(params[:id])
  end
end
