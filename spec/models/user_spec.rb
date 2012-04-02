require 'spec_helper'

describe User do
  it "can #follow another user" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    follower.followed_users.should == [followed_user]
  end

  it "#can_follow? unless user is the same" do
    follower = create(:user)
    follower.can_follow?(follower).should == false
  end

  it "#can_follow? unless already following" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    follower.can_follow?(followed_user).should == false
  end

  it "#can_follow? users" do
    follower = create(:user)
    unfollowed_user = create(:user)
    follower.can_follow?(unfollowed_user).should == true
  end

  it "has #followed_users" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    follower.followed_users.should == [followed_user]
  end

  it "has #following_users" do
    follower = create(:user)
    followed_user = create(:user)
    follower.follow(followed_user)
    followed_user.following_users.should == [follower]
  end
end
