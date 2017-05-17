class ServiceStation

#model talks to service, service talks to API, parse API and create Ruby object to work with

def self.find_stations(zipcode)
   response = Faraday.get("https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?api_key=#{NREL_USER_KEY}&l&location=#{zipcode}&fuel_type=ELEC,LPG")
   parsed_response = JSON.parse(response.body, symbolize_names: true)
   parsed_response[:stations]
 end

end

end
