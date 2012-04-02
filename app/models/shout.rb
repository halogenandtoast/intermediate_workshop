class Shout < ActiveRecord::Base
  belongs_to :user
  delegate :email, to: :user, prefix: true
end
