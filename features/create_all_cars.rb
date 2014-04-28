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
dealership.add_cars_to_lot(dadsnissan)

dadsoldnissan = UsedCar.new("nissan","240sx", 1995, "red", "man", 22_000, 140_000, 1500)
dealership.add_cars_to_lot(dadsoldnissan)

uglydodge = Car.new("dodge","neon", 2003, "pink", "man", 20_000)
dealership.add_cars_to_lot(uglydodge)

nicemercedes = Car.new("mercedes","glk", 2014, "navy", "auto", 60_000)
dealership.add_cars_to_lot(nicemercedes)

newsubaru = Car.new("subaru","impreza", 2014, "grey", "man", 22_000)
dealership.add_cars_to_lot(newsubaru)

jenscar = UsedCar.new("honda","crv", 2008, "blue", "auto", 25_000, 63_000, 200)
dealership.add_cars_to_lot(jenscar)

puts "Dealer #{dealership.dealer_name} out in #{dealership.location} has #{dealership.new_and_used_inventory.length} cars."


def list_all_cars(total_number_of_cars_on_lot, lot_array)
  car_index = 0
    total_number_of_cars_on_lot.times do
    puts "Car #{car_index + 1}: #{lot_array[car_index].model_year} #{lot_array[car_index].make} #{lot_array[car_index].model} priced at $#{lot_array[car_index].calculated_price}"
    car_index += 1
  end
end
list_all_cars(dealership.new_and_used_inventory.length, dealership.new_and_used_inventory)

puts "Please enter which car index you would like to view more about (1-8):"
inventory_index_request = gets.chomp.to_i - 1
puts dealership.new_and_used_inventory[inventory_index_request].inspect
puts
puts "now we will add a new car"
print "enter make:"
make1 = gets.chomp
print "enter model:"
model1 = gets.chomp
print "enter year:"
year1 = gets.chomp.to_i
print "enter color:"
color1 = gets.chomp
print "enter transmission:"
trans1 = gets.chomp
print "enter an msrp:"
msrp1 = gets.chomp.to_i


usercar = Car.new(make1, model1, year1, color1, trans1, msrp1)
dealership.add_cars_to_lot(usercar)
puts

puts "the lot has grown:"
def list_all_cars(total_number_of_cars_on_lot, lot_array)
  car_index = 0
    total_number_of_cars_on_lot.times do
    puts "Car #{car_index + 1}: #{lot_array[car_index].model_year} #{lot_array[car_index].make} #{lot_array[car_index].model} priced at $#{lot_array[car_index].calculated_price}"
    car_index += 1
  end
end
list_all_cars(dealership.new_and_used_inventory.length, dealership.new_and_used_inventory)


