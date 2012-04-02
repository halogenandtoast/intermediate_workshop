class Shout < ActiveRecord::Base
  belongs_to :user
  delegate :email, to: :user, prefix: true

  def self.current
    order("created_at DESC")
  end
end
