class ShoutSearcher
  def initialize(options)
    @options = options
  end

  def results
    shout_ids = ShoutSearchIndex.where(
      "shout_search_indices.`index` like ?",
      "%#{@options[:query]}%"
    ).select(:shout_id)

    Shout.where(id: shout_ids)
  end
end
