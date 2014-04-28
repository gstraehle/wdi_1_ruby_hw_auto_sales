require 'date' #date is calle upon in age calc later

class Car
  # class variable
  @inventory_id = 0
  #this generates a unique for each car on the lot
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
    def sale_price
     calc = msrp
     calc.to_i
   end
end
