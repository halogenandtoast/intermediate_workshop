class RenameShoutSearchIndexesToIndices < ActiveRecord::Migration
  def change
    rename_table :shout_search_indexes, :shout_search_indices
  end
end
