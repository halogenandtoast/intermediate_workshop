class AddUniqueContraintOnFollowingRelationships < ActiveRecord::Migration
  def change
    add_index :following_relationships, [:follower_id, :followed_user_id], unique: true, name: 'unique_index_for_following_relationships'
  end
end
