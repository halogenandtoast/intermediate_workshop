class MoveShoutsToTextShouts < ActiveRecord::Migration
  def up
    add_column :shouts, :medium_type, :string
    add_column :shouts, :medium_id, :integer
    add_index :shouts, [:medium_type, :medium_id]
    select_all("SELECT * FROM shouts").each do |row|
      shout_id = insert <<-SQL
        INSERT INTO text_shouts(
          body,
          created_at,
          updated_at)
        VALUES (
          '#{row['body']}',
          '#{row['created_at']}',
          '#{row['updated_at']}'
        )
      SQL
      update <<-SQL
        UPDATE shouts
        SET medium_type='TextShout',
          medium_id=#{shout_id}
        WHERE id=#{row['id']}
      SQL
    end
    remove_column :shouts, :body
  end

  def down
    add_column :shouts, :body, :string
    select_all("SELECT * FROM shouts").each do |row|
      text_shout = select_one("SELECT * FROM text_shouts where id=#{row['medium_id']}")
      update("UPDATE shouts SET body='#{text_shout['body']}' where id=#{row['id']}")
    end
    delete("DELETE FROM text_shouts")
    remove_index :shouts, [:medium_type, :medium_id]
    remove_column :shouts, :medium_type
    remove_column :shouts, :medium_id
  end
end
