class CreatePhotoMedia < ActiveRecord::Migration
  def change
    create_table :photo_media do |t|
      t.has_attached_file :photo
    end
  end
end
