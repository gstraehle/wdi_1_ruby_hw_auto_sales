require_relative 'used_car' #used car references car, which gathers everything
class Dealer

  attr_reader :dealer_name, :location, :new_and_used_inventory #getter for all inititalized pieces
  attr_accessor :corrupt_or_honest
  def initialize(dealer_name, location, corrupt = false)
    @dealer_name = dealer_name
    @location = location
    @corrupt_or_honest = corrupt
    @new_and_used_inventory = []
  end

  def add_cars_to_lot(car) #this shovels each instance of car class into the lot
    @new_and_used_inventory << car
  end
#removed getter that was here and put in tup with dealer name and location in attr_reader

end
