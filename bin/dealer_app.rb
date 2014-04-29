#require 'pry'
#linking relevant file in repo
require_relative '../lib/dealer'
#this lets you name the dealership
print "what is the name of the dealership?"
dealership_name = gets.chomp
print "what town is the dealership in?"
location = gets.chomp
#makes the dealership
dealership = Dealer.new(dealership_name, location)
#manual, hard-coded entry of 8 example new and used cars
#binding.pry
mysubaru = UsedCar.new("subaru","legacy", 2011, "black", "auto", 26_000, 43_000, 500, "good")
dealership.add_cars_to_lot(mysubaru)

momshonda = UsedCar.new("honda","crv", 2013, "blue", "auto", 24_000, 5_000, 0, "great")
dealership.add_cars_to_lot(momshonda)

dadsnissan = UsedCar.new("nissan","altima", 2008, "red", "man", 28_000, 40_000, 0, "great")
dealership.add_cars_to_lot(dadsnissan)

dadsoldnissan = UsedCar.new("nissan","240sx", 1995, "red", "man", 22_000, 140_000, 1500, false)
dealership.add_cars_to_lot(dadsoldnissan)

uglydodge = Car.new("dodge","neon", 2003, "pink", "man", 20_000)
dealership.add_cars_to_lot(uglydodge)

nicemercedes = Car.new("mercedes","glk", 2014, "navy", "auto", 60_000)
dealership.add_cars_to_lot(nicemercedes)

newsubaru = Car.new("subaru","impreza", 2014, "grey", "man", 22_000)
dealership.add_cars_to_lot(newsubaru)

jenscar = UsedCar.new("honda","crv", 2008, "blue", "auto", 25_000, 63_000, 200)
dealership.add_cars_to_lot(jenscar)
#just a status check and update to user
puts "Dealer #{dealership.dealer_name} out in #{dealership.location} has #{dealership.new_and_used_inventory.length} cars."

#method that allows us to print out a list of all of the cars
def list_all_cars(total_number_of_cars_on_lot, lot_array)
  car_index = 0
  total_number_of_cars_on_lot.times do
    puts "Car #{car_index + 1}: #{lot_array[car_index].model_year} #{lot_array[car_index].make} #{lot_array[car_index].model} priced at $#{lot_array[car_index].sale_price}"
    car_index += 1
  end
end
list_all_cars(dealership.new_and_used_inventory.length, dealership.new_and_used_inventory)
# this dives into one specific car and shows you everything about it
puts "Please enter which car number you would like to view more about (1-8):"
inventory_index_request = gets.chomp.to_i - 1
puts dealership.new_and_used_inventory[inventory_index_request].inspect
puts
#sequence to add a new car (new car only, but used would work if all of the args are entered)
puts "now we will add a new car"
print "enter make:"
make1 = gets.chomp
print "enter model:"
model1 = gets.chomp
print "enter color:"
color1 = gets.chomp
print "enter transmission:"
trans1 = gets.chomp
print "enter an msrp:"
msrp1 = gets.chomp.to_i

#adding the used car
usercar = Car.new(make1, model1, Date.today.year, color1, trans1, msrp1)
dealership.add_cars_to_lot(usercar)
puts
puts "Hey we just got a classic vw bug from the 70s with 100k miles, but with no damage!"
bustedclassic = UsedCar.new("vw","bug", 1974, "mustard", "man", 19_000, 100_000, 0, "nope")
dealership.add_cars_to_lot(bustedclassic)
#adds new cars
puts "the lot has grown:"
def list_all_cars(total_number_of_cars_on_lot, lot_array)
  car_index = 0
    total_number_of_cars_on_lot.times do
    puts "Car #{car_index + 1}: #{lot_array[car_index].model_year} #{lot_array[car_index].make} #{lot_array[car_index].model} priced at $#{lot_array[car_index].sale_price}"
    car_index += 1
  end
end
list_all_cars(dealership.new_and_used_inventory.length, dealership.new_and_used_inventory)
# added some damage functionality
puts
puts "Here are my used cars in good condition... what do you think?"
def list_all_cars_in_good_condition(total_number_of_cars_on_lot, lot_array)
  car_index = 0
  total_number_of_cars_on_lot.times do
    if (lot_array[car_index].msrp != lot_array[car_index].sale_price && lot_array[car_index].good_condition != false)
      puts "#{lot_array[car_index].model_year} #{lot_array[car_index].make} with inventory id #{lot_array[car_index].inventory_id}"
    end
    car_index += 1
  end
end

list_all_cars_in_good_condition(dealership.new_and_used_inventory.length, dealership.new_and_used_inventory)
puts "You see damages in which of the above?  Please let me know the inventory ID number!!"
id_to_change = gets.chomp.to_i - 1
puts "You're right, I'll update my database"
puts "Price on that #{dealership.new_and_used_inventory[id_to_change].model} was #{dealership.new_and_used_inventory[id_to_change].sale_price}."
dealership.new_and_used_inventory[id_to_change].good_condition = false
puts "Price on that #{dealership.new_and_used_inventory[id_to_change].model} is now #{dealership.new_and_used_inventory[id_to_change].sale_price}."
puts dealership.new_and_used_inventory[id_to_change].inspect
puts
puts "what is the max you can pay, of at least 500?"
maxpay = gets.chomp.to_i

def list_all_cars_in_range(total_number_of_cars_on_lot, lot_array, max_price)
  car_index = 0
  total_number_of_cars_on_lot.times do
    if lot_array[car_index].sale_price < max_price
      puts "Try Car #{car_index + 1} our #{lot_array[car_index].model_year} #{lot_array[car_index].make}"
    end
    car_index += 1
  end
end
list_all_cars_in_range(dealership.new_and_used_inventory.length, dealership.new_and_used_inventory, maxpay)





