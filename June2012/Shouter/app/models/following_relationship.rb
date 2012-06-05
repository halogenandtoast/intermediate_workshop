class FollowingRelationship < ActiveRecord::Base
  attr_accessible :followed_user
  belongs_to :follower, class_name: "User"
  belongs_to :followed_user, class_name: "User"
  validates :follower_id, uniqueness: { scope: :following_user_id }
end
