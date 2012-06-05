class TextMediaSearchIndexObserver < ActiveRecord::Observer
  observe TextMedium

  def after_commit(text_medium)
    index = ShoutSearchIndex.where(shout_id: text_medium.shout.id).first_or_initialize
    index.index = text_medium.body
    index.save
  end
end
