class CreateFollowingRelationships < ActiveRecord::Migration
  def change
    create_table(:following_relationships) do |t|
      t.integer :follower_id
      t.integer :followed_user_id
    end
    add_index :following_relationships, :follower_id
    add_index :following_relationships, :followed_user_id
  end
end
