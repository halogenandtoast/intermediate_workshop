class FollowingRelationshipsController < ApplicationController
  def create
    followed_user = User.find(params[:user_id])
    current_user.follow(followed_user)
  end
end
