require_relative '../lib/used_car'

mysubaru = UsedCar.new("subaru","legacy", 2011, "black", "auto", 26_000, 43_000, 500, "good")
puts "The car is a #{mysubaru.color} #{mysubaru.make} #{mysubaru.model} from #{mysubaru.model_year}."
puts "This #{mysubaru.transmission} trans car was worth #{mysubaru.msrp}."
puts "Now has #{mysubaru.mileage} miles, #{mysubaru.repairs_needed} worth of needed repairs and is in #{mysubaru.poor_condition} condition"
puts "The car is #{mysubaru.car_age} years old."
puts "ID number #{mysubaru.inventory_id}."
puts "Calculated price is #{mysubaru.calculated_price}"
puts
# uglydodge = Car.new("dodge","neon", 2003, "pink", "man", 200_000, 430_500, 150, "poor")
momshonda = UsedCar.new("honda","crv", 2013, "blue", "auto", 24_000, 5_000, 0, "great")
puts "The car is a #{momshonda.color} #{momshonda.make} #{momshonda.model} from #{momshonda.model_year}."
puts "This #{momshonda.transmission} trans car was worth #{momshonda.msrp}."
puts "Now has #{momshonda.mileage} miles, #{momshonda.repairs_needed} worth of needed repairs and is in #{momshonda.poor_condition} condition"
puts "The car is #{momshonda.car_age} years old."
puts "ID number #{momshonda.inventory_id}."
puts "Calculated price is #{momshonda.calculated_price}"


