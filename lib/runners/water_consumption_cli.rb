class WaterConsumptionCLI

	def call
		puts "Welcome Guest! We are aobut to make a SPLASH with some fun facts about New York City's water usage!"
		puts ""
		puts "NOTE: If you need help, please enter 'help'. If you would like to exit the program, please enter 'exit'." 
		run 
	end

	def prompt
		puts ""
		print "If you wish to proceed with the program, please enter a year between 1979 and 2009: "
	end

	def help
		puts "-----------------------------------"
		puts "Type 'exit' to exit the program"
		puts "Type 'help' to view this menu again"
		puts "-----------------------------------"
	end


	def output_central_park_reservoir(input)
		water_data = WaterConsumptionAPICaller.new(input)
		variable = water_data.fetch_water_consumption.send("central_park_reservoir")
		puts "-------------------------------------------------------------------------------------"
		puts "In #{input}, New York City consumed water equivalent to #{variable}% of Central Park Reservoir!"
		puts "-------------------------------------------------------------------------------------"
	end

	def output_lake_erie(input)
		water_data = WaterConsumptionAPICaller.new(input)
		variable = water_data.fetch_water_consumption.send("lake_erie")
		puts "------------------------------------------------------------------------------------"
		puts "In #{input}, New York City consumed water equivalent to #{variable}% of Lake Erie!"
		puts "------------------------------------------------------------------------------------"
	end

	def output_bottles_of_water(input)
		water_data = WaterConsumptionAPICaller.new(input)
		variable = water_data.fetch_water_consumption.send("bottles_of_water")
		puts "--------------------------------------------------------------------------------"
		puts "In #{input}, New York City consumed water equivalent to #{variable} bottles of water!"
		puts "--------------------------------------------------------------------------------"
	end

	def output_washing_machines(input)
		water_data = WaterConsumptionAPICaller.new(input)
		variable = water_data.fetch_water_consumption.send("washing_machines")
		puts "------------------------------------------------------------------------------------------------------------"
		puts "In #{input}, New York City consumed water equivalent to #{variable} loads of laundry in a standard washing machine!"
		puts "------------------------------------------------------------------------------------------------------------"
	end

	def output_toilets(input)
		water_data = WaterConsumptionAPICaller.new(input)
		variable = water_data.fetch_water_consumption.send("toilets")
		puts "-----------------------------------------------------------------------------"
		puts "In #{input}, New York City consumed water equivalent to #{variable} toilet flushes!"
		puts "-----------------------------------------------------------------------------"
	end

	def output_olympic_pools(input)
		water_data = WaterConsumptionAPICaller.new(input)
		variable = water_data.fetch_water_consumption.send("olympic_pools")
		puts "--------------------------------------------------------------------------------------"
		puts "In #{input}, New York City consumed water equivalent to #{variable} Olympic sized swimming pools!"
		puts "--------------------------------------------------------------------------------------"	
	end

	def output_human_mouth_fulls(input)
		water_data = WaterConsumptionAPICaller.new(input)
		variable = water_data.fetch_water_consumption.send("human_mouth_fulls")
		puts "------------------------------------------------------------------------------------------"
		puts "In #{input}, New York City consumed water equivalent to #{variable} average human mouth fulls!"
		puts "------------------------------------------------------------------------------------------"	
	end

	def invalid
		puts "------------------------------------"
		puts "I'm sorry, that is not a valid year."
		puts "------------------------------------"
	end

	def we_did_something_wrong
		puts "---------------------------------------------------------------"
		puts "If you're seeing this, we did something very, very wrong . . . "
		puts "---------------------------------------------------------------"
	end

	def valid(input)
		methods = ["central_park_reservoir", "lake_erie", "bottles_of_water", "washing_machines", "toilets", "olympic_pools", "human_mouth_fulls"]
		chosen_method = methods.sample
		if chosen_method == "central_park_reservoir"
			output_central_park_reservoir(input)
		elsif chosen_method == "lake_erie"
			output_lake_erie(input)
		elsif chosen_method == "bottles_of_water"
			output_bottles_of_water(input)
		elsif chosen_method == "washing_machines"
			output_washing_machines(input)
		elsif chosen_method == "toilets"
			output_toilets(input)
		elsif chosen_method == "olympic_pools"
			output_olympic_pools(input)
		elsif chosen_method == "human_mouth_fulls"
			output_human_mouth_fulls(input)		
		else 
			we_did_something_wrong
		end
	end 

	def run
		prompt
		input = gets.strip
		if input == "help"
			help
		elsif input == "exit"
			puts ""
			puts "---------------------------------------------------------------------------------------------------------"
			puts "I hope you have enjoyed using our program! Feel free to use it again anytime you want to make a SPLASH :)"
			puts "---------------------------------------------------------------------------------------------------------"
			puts ""
			exit
		elsif input.to_i.between?(1979, 2009) 
			valid(input)
		else 
			invalid
		end
		run
	end 

end
