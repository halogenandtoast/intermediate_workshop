class PhotoMediaSearchIndexObserver < ActiveRecord::Observer
  observe PhotoMedium

  def after_commit(photo_medium)
    index = ShoutSearchIndex.where(shout_id: photo_medium.shout.id).first_or_initialize
    index.index = photo_medium.photo_file_name
    index.save
  end
end
