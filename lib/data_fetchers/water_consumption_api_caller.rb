class WaterConsumptionAPICaller

	attr_reader :input

	def initialize(input)
		@input = input
	end

	def fetch_water_consumption
		puts "Fetching all of the water consumption data for the year #{input}!"
		data = JSON.parse(RestClient.get("https://data.cityofnewyork.us/resource/waf7-5gvc.json"))
		data.each do |water|
			water.each do |key, value|
				if key == "year" && value == input
					water.each do |key, value|
						if key == "nyc_consumption_million_gallons_per_day"
							@water = WaterConsumption.new(input, value)
						end
					end
				end
			end
		end
		@water
	end
	
end
