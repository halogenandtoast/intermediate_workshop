class CreateTextMedia < ActiveRecord::Migration
  def up
    create_table(:text_media) do |t|
      t.text :body
    end
    add_column :shouts, :medium_type, :string
    add_column :shouts, :medium_id, :integer

    select_all("SELECT id, body FROM shouts").each do |row|
      medium_id = insert("INSERT INTO text_media(body) VALUES ('#{row['body']}')")
      update("UPDATE shouts SET medium_type='TextMedium', medium_id=#{medium_id} WHERE id=#{row['id']}")
    end

    remove_column :shouts, :body
  end

  def down
    # pretend like we were awesome
  end
end
