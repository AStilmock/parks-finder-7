class ParksController < ApplicationController
  def index
    @parks = SearchFacade.new.get_parks(params[:state])
  end
end