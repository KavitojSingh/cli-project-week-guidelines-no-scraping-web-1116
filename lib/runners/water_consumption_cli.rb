class WaterConsumptionCLI

	def call
		puts "Calling the Application!"

		print "Please enter a year(yyyy) between 1979 and 2009: "
		input = gets.strip

		if input == "help"
			help
		elsif input == "exit"
			exit
		else
			water_data = WaterConsumptionAPICaller.new(input)
			variable = water_data.fetch_water_consumption.central_park_reservoir
			puts "In #{input}, New York City consumed water equivalent to #{variable} Central Park Reservoirs!!!"
		end

		# water_data = WaterConsumptionAPICaller.new(input)
		# variable = water_data.fetch_water_consumption.central_park_reservoir

		# puts "In #{input}, New York City consumed water equivalent to #{variable} Central Park Reservoirs!!!"

	end

	def help
		puts "Type 'exit' to exit the program"
		puts "Type 'help' to view this menu again"
	end


end

