class CreateShoutSearchIndexes < ActiveRecord::Migration
  def change
    create_table(:shout_search_indexes) do |t|
      t.integer :shout_id
      t.text :index
    end
  end
end
