class WaterConsumption

	attr_reader :year, :value

	def initialize(year, value)
		@year = year
		@value = value
	end

	def central_park_reservoir
		((((@value.to_i)*1000000)/1000000000.0)*100).round(1)
	end

	def lake_erie
		sprintf('%.15f', ((((@value.to_f)*1000000)/1277295890000000000000000.0)*100))
	end

	def bottles_of_water
		(((@value.to_i)*1000000)*8)
	end

	def washing_machines
		(((@value.to_i)*1000000)/27)
	end

	def toilets
		(((@value.to_i)*1000000)/2)
	end

	def olympic_pools
		(((@value.to_i)*1000000)/660430)
	end

	def human_mouth_fulls
		(((@value.to_i)*1000000)*32)
	end

end
