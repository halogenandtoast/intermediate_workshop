class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts
  has_many :following_relationships, foreign_key: "follower_id"
  has_many :followed_users, through: :following_relationships

  def current_shouts
    shouts.current
  end
end

# Alice following Bob 
# 
# user      followings_relationships
# | id |    | follower_id | followed_user_id |
