class TextMediaSearchIndexObserver < ActiveRecord::Observer
  observe TextMedium

  def after_commit(text_medium)
    Rails.logger.info "*"*80
    Rails.logger.info text_medium
    Rails.logger.info text_medium.shout
    Rails.logger.info "*"*80

    index = ShoutSearchIndex.where(shout_id: text_medium.shout.id).first_or_initialize
    index.index = text_medium.body
    index.save
    # ShoutSearchIndex.create(
    #   shout: text_medium.shout,
    #   index: text_medium.body
    # )
  end
end
