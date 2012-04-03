class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts
  has_many :followed_user_relationships, foreign_key: "follower_id", class_name: "FollowingRelationship"
  has_many :followed_users, through: :followed_user_relationships

  has_many :following_user_relationships, foreign_key: "followed_user_id", class_name: "FollowingRelationship"
  has_many :following_users, through: :following_user_relationships, source: :follower

  def current_shouts
    ShoutTimeline.new([id])
  end

  def timeline_shouts
    ShoutTimeline.new(self_and_followed_user_ids)
  end

  def follow(followed_user)
    followed_users << followed_user
  end

  def can_follow?(user)
    !self_and_followed_user_ids.include?(user.id)
  end

  private
  def self_and_followed_user_ids
    followed_user_ids + [id]
  end
end

# Alice following Bob 
#  Alice's followed users includes Bob
#
# user      followings_relationships
# | id |    | follower_id | followed_user_id |
