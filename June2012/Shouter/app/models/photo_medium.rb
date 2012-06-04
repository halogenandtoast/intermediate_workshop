class PhotoMedium < ActiveRecord::Base
  has_attached_file :photo
  attr_accessible :photo
end
