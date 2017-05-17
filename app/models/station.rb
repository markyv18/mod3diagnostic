class Station
  attr_reader :name, :fuel_types

  def initialize(params)
   @name = params[:station_name]
   @fuel_types = params[:fuel_type_code]
 end

 def find_stations

end
 # "fuel_stations": [
 #    {
 #      "fuel_type_code": "ELEC",
 #      "station_name": "Sacramento County Public Garage",
 #      "city": "Sacramento",
 #      "state": "CA",
 #      "street_address": "725 7th St",
 #      "zip": "95814",
 #    },

    # 10 closest stations within 6 miles sorted by distance
    # limited to Electric and Propane
    # each station's Name, Address, Fuel Types, Distance, and Access Times
