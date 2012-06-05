class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @shouts = @user.public_shout_timeline
  end
end
