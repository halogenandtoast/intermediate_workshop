class PublicShoutTimeline
  def initialize(timeline)
    @timeline = timeline
  end

  def shouts
    @timeline.shouts.where(public: true)
  end
end
