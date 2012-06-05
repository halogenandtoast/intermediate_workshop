class ShoutSearchIndex < ActiveRecord::Base
  attr_accessible :shout, :index
  belongs_to :shout
end
