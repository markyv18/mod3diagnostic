class SearchController < ApplicationController
#find stations by passing in search paramatters
  def index
  @stations = Station.find_stations(params["zipcode"])
  end

end
