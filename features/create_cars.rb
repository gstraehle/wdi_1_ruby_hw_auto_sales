require_relative '../lib/car'


 mysubaru = Car.new("subaru","legacy", 2011, "black", "auto", 26_000, 43_000, 100, "good")
 puts "The car is a #{mysubaru.color} #{mysubaru.make} #{mysubaru.model} from #{mysubaru.model_year}."
 puts "This #{mysubaru.transmission} trans car was worth #{mysubaru.msrp}"
 puts "Now has #{mysubaru.mileage} miles, #{mysubaru.repairs_needed} worth of needed repairs and is in #{mysubaru.poor_condition} condition"
 puts "The car is #{mysubaru.car_age} years old."
 puts "ID number #{mysubaru.car_id}."
 puts "Calculated price is #{mysubaru.calculated_price}"

# uglydodge = Car.new("dodge","neon", 2003, "pink", "man", 200_000, 430_500, 150, "poor")

