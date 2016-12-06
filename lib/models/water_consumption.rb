class WaterConsumption

	attr_reader :year, :value

	def initialize(year, value)
		@year = year
		@value = value
	end

	def central_park_reservoir
		(((@value.to_i)*1000000)/1000000000.0).round(1)
	end

end

