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
			methods = ["central_park_reservoir", "lake_erie", "bottles_of_water", "washing_machines", "toilets", "olympic_pools", "human_mouth_fulls"]
			chosen_method = methods.sample
			if chosen_method == "central_park_reservoir"
				water_data = WaterConsumptionAPICaller.new(input)
				variable = water_data.fetch_water_consumption.send("central_park_reservoir")
				puts "In #{input}, New York City consumed water equivalent to #{variable}% of Central Park Reservoir!"
			elsif chosen_method == "lake_erie"
				water_data = WaterConsumptionAPICaller.new(input)
				variable = water_data.fetch_water_consumption.send("lake_erie")
				puts "In #{input}, New York City consumed water equivalent to #{variable}% of Lake Erie!"
			elsif chosen_method == "bottles_of_water"
				water_data = WaterConsumptionAPICaller.new(input)
				variable = water_data.fetch_water_consumption.send("bottles_of_water")
				puts "In #{input}, New York City consumed water equivalent to #{variable} bottles of water!"
			elsif chosen_method == "washing_machines"
				water_data = WaterConsumptionAPICaller.new(input)
				variable = water_data.fetch_water_consumption.send("washing_machines")
				puts "In #{input}, New York City consumed water equivalent to #{variable} loads of laundry in a standard washing machine!"
			elsif chosen_method == "toilets"
				water_data = WaterConsumptionAPICaller.new(input)
				variable = water_data.fetch_water_consumption.send("toilets")
				puts "In #{input}, New York City consumed water equivalent to #{variable} toilet flushes!"
			elsif chosen_method == "olympic_pools"
				water_data = WaterConsumptionAPICaller.new(input)
				variable = water_data.fetch_water_consumption.send("olympic_pools")
				puts "In #{input}, New York City consumed water equivalent to #{variable} Olympic sized swimming pools!"	
			elsif chosen_method == "human_mouth_fulls"
				water_data = WaterConsumptionAPICaller.new(input)
				variable = water_data.fetch_water_consumption.send("human_mouth_fulls")
				puts "In #{input}, New York City consumed water equivalent to #{variable} average human mouth fulls!"			
			else 
				puts "Woohoo!"
			end
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



