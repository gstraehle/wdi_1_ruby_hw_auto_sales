require_relative 'used_car'
class Dealer

  attr_reader :dealer_name, :location
  attr_accessor :new_and_used_inventory, :corrupt_or_honest
  def initialize(dealer_name, location, corrupt = false)
    @dealer_name = dealer_name
    @location = location
    @corrupt_or_honest = corrupt
    @new_and_used_inventory = []
  end

  def add_cars_to_lot(car)
    @new_and_used_inventory << car
  end

end
