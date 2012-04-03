class MoveShoutsToTextShouts < ActiveRecord::Migration
  def up
    add_column :shouts, :medium_type, :string
    add_column :shouts, :medium_id, :integer
    add_index :shouts, [:medium_type, :medium_id]

  end

  def down
  end
end
