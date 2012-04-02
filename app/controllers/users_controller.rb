class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @shouts = @user.current_shouts
  end
end
