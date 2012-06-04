class TextMedium < ActiveRecord::Base
  attr_accessible :body
  has_one :shout, as: :medium
end
