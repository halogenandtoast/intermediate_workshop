class User < ActiveRecord::Base
  include Clearance::User
  has_many :shouts

  def current_shouts
    shouts.current
  end
end
