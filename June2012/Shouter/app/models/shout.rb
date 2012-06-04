class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :medium, polymorphic: true

  def self.current
    order('created_at DESC')
  end
end
