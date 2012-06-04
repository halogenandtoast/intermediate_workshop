class User < ActiveRecord::Base
  include Clearance::User
  attr_accessible :email, :password
  has_many :shouts
end
