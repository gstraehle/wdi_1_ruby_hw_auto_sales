require_relative '../lib/car'


 uglypontiac = Car.new("pontiac","aztec", 2006, "red", "auto", 20_000, 43_500, 850, "good")
 puts "The car is a #{uglypontiac.color} #{uglypontiac.make} #{uglypontiac.model} from #{uglypontiac.model_year}."
 puts "This #{uglypontiac.transmission} trans car was worth #{uglypontiac.msrp}"
 puts "Now has #{uglypontiac.mileage} miles, #{uglypontiac.repairs_needed} worth of needed repairs and is in #{uglypontiac.condition} condition"
 puts "The car is #{uglypontiac.car_age} years old."
 puts "ID number #{uglypontiac.car_id}."
# uglydodge = Car.new("dodge","neon", 2003, "pink", "man", 200_000, 430_500, 150, "poor")

