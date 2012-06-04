class TextShout < ActiveRecord::Base
  has_one :shout, as: :medium
end
