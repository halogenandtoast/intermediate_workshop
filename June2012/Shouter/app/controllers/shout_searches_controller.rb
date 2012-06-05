class ShoutSearchesController < ApplicationController
  def show
    # params: { search: { query: "wombat" } }
    @shouts = ShoutSearcher.new(params[:search]).results
  end
end
