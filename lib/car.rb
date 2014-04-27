require 'date'

class Car
  DEP = 0.90
  #depreciation per year as a rate, roughly a constant

   # class variable
   @car_id = 10_000_000_000

   def self.car_id
     @car_id
   end

   def self.gen_car_id
     @car_id += 1
   end
   #getter method for items staying constant
   attr_reader :make, :model, :model_year, :msrp, :color, :transmission, :car_id
   #setter method for items that may change
   attr_accessor :mileage, :damage, :repairs_needed, :poor_condition

   # initialized statements do not match word-for-word with inst. var names
   def initialize(make, model, year, color, trans, msrp, miles, damage_val, poor_condition = false)
     @make = make
     @model = model
     @model_year = year
     @color = color
     @transmission = trans
     @msrp = msrp
     @mileage = miles
     @repairs_needed = damage_val
     @poor_condition = poor_condition

     @car_id = Car.gen_car_id
   end

   def car_age
     Date.today.year - model_year
   end
  def mileage_deduction(number_of_miles)
    x = 1.0
    mile_milestones = number_of_miles / 1000
    mile_milestones.times do
      x = x * 0.999
    end
    x
  end


 # each value wil serve to downgrade the value off of the origninal msrp
   def calculated_price
     calc = msrp.to_f * DEP ** (car_age.to_f + 1.0) * (poor_condition ? 1.0 : 0.7) * mileage_deduction(mileage)
     calc.to_i
   end
 end
