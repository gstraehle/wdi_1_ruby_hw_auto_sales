require_relative '../lib/car'

 uglypontiac = Car.new("pontiac","aztec", 2006, "red", "auto", 20_000, 43_500, 850, "good")
 puts "The car is a #{uglypontiac.color} #{uglypontiac.make} #{uglypontiac.model} from #{uglypontiac.model_year}."
 puts "This #{uglypontiac.transmission} trans car was worth #{uglypontiac.msrp}"
 puts "Now has #{uglypontiac.mileage} miles, #{uglypontiac.repairs_needed} worth of needed repairs and is in #{uglypontiac.condition} condition"
