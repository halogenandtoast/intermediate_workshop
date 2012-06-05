require 'spec_helper'

describe User do
  it "#can_follow? unless already following" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    follower.can_follow?(followed_user).should be_false
  end

  it "#can_follow? unless same user" do
    follower = create(:user)
    follower.can_follow?(follower).should be_false
  end

  it "#can_follow? other users" do
    follower = create(:user)
    followed_user = create(:user)
    follower.can_follow?(followed_user).should be_true
  end
end
