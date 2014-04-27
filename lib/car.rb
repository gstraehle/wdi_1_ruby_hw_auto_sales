require 'date'

class Car
  # class variable
   @inventory_id = 0

  def self.inventory_id
    @inventory_id
  end

  def self.gen_inventory_id
    @inventory_id += 1
  end
  #getter method for items staying constant
  attr_reader :make, :model, :model_year, :msrp, :color, :transmission,:inventory_id

  # initialized statements do not match word-for-word with inst. var names
  def initialize(make, model, year, color, trans, msrp)
    @make = make
    @model = model
    @model_year = year
    @color = color
    @transmission = trans
    @msrp = msrp
    @inventory_id = Car.gen_inventory_id
  end
end
