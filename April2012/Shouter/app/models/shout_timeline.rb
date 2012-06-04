class ShoutTimeline
  extend ActiveModel::Naming

  def initialize(user_ids)
    @user_ids = user_ids
  end

  def shouts
    Shout.where(:user_id => @user_ids).current
  end
end
