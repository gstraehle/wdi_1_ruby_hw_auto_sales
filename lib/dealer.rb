require_relative 'used_car'
class Dealer

  attr_reader :dealer_name, :location, :new_and_used_inventory
  attr_accessor :corrupt_or_honest
  def initialize(dealer_name, location, corrupt = false)
    @dealer_name = dealer_name
    @location = location
    @corrupt_or_honest = corrupt
    @new_and_used_inventory = []
  end

  def add_cars_to_lot(car)
    @new_and_used_inventory << car
  end

  def get_new_and_used_inventory
    @new_and_used_inventory
  end

end
