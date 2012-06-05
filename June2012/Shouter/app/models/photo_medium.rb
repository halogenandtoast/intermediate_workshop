class PhotoMedium < ActiveRecord::Base
  has_attached_file :photo
  attr_accessible :photo
  has_one :shout, as: :medium
end
