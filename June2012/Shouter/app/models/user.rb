class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :password
  has_many :shouts
  has_many :following_relationships, foreign_key: :follower_id
  has_many :followed_users, through: :following_relationships

  def follow(user)
    following_relationships.create(followed_user: user)
  end

  def can_follow?(user)
    !self_and_followed_user_ids.include?(user.id)
  end

  def shout_timeline
    ShoutTimeline.new(self_and_followed_user_ids)
  end

  def public_shout_timeline
    ShoutTimeline.new(id)
    # PublicShoutTimeline.new(ShoutTimeline.new(id))
  end

  private

  def self_and_followed_user_ids
    [id] + followed_user_ids
  end
end

# following_relationships
# | id | follower_id       | followed_user_id    |
# |    | I am the follower | I am being followed |
