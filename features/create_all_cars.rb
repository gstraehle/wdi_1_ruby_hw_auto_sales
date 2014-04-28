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

dadsnissan = UsedCar.new("nissan","altima", 2008, "red", "man", 28_000, 40_000, 0, "great")
dealership.add_cars_to_lot(momshonda)

dadsoldnissan = UsedCar.new("nissan","240sx", 1995, "red", "man", 22_000, 140_000, 1500)
dealership.add_cars_to_lot(momshonda)

uglydodge = Car.new("dodge","neon", 2003, "pink", "man", 20_000)
dealership.add_cars_to_lot(uglydodge)

nicemercedes = Car.new("mercedes","glk", 2014, "navy", "auto", 60_000)
dealership.add_cars_to_lot(uglydodge)

newsubaru = Car.new("subaru","impreza", 2014, "grey", "man", 22_000)
dealership.add_cars_to_lot(uglydodge)

jenscar = UsedCar.new("honda","crv", 2008, "blue", "auto", 25_000, 63_000, 200)
dealership.add_cars_to_lot(uglydodge)

puts "Dealer #{dealership.dealer_name} out in #{dealership.location} has #{dealership.new_and_used_inventory.length} cars."

