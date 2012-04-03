class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: {
    thumb: "200x200"
  }
end
