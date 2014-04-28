require_relative '../lib/dealer'

print "what is the name of the dealership?"
dealership_name = gets.chomp
print "what town is the dealership in?"
location = gets.chomp

dealership = Dealer.new(dealership_name, location)

mysubaru = UsedCar.new("subaru","legacy", 2011, "black", "auto", 26_000, 43_000, 500, "good")
dealership.add_cars_to_lot(mysubaru)

momshonda = UsedCar.new("honda","crv", 2013, "blue", "auto", 24_000, 5_000, 0, "great")
dealership.add_cars_to_lot(momshonda)

uglydodge = Car.new("dodge","neon", 2003, "pink", "man", 200_000)
dealership.add_cars_to_lot(uglydodge)

puts "Dealer #{dealership.dealer_name} out in #{dealership.location} has #{dealership.new_and_used_inventory.length} cars."

