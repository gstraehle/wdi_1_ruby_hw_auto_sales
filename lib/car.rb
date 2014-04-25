# require 'date'

# class Car

#   #depreciation per year as a rate, roughly a constant
#   DEPRECIATION = .8
#   # class variable
#   @car_id = 10_000_000_000

#   def self.car_id
#     @car_id
#   end

#   def self.gen_car_id
#     @car_id += 1
#   end
#   #getter method for items staying constant
#   attr_reader :car_id, :make, :model, :model_year, :msrp, :color, :transmission
#   #setter method for items that may change
#   attr_accessor :mileage, :damage, :repairs_needed

#   def initialize(make, model, year, color, trans, msrp, miles, damage, condition)
#     @make = make
#     @model = model
#     @model_year = year
#     @color = color
#     @transmission = trans
#     @msrp = msrp
#     @mileage = miles
#     @damage = damage
#     @repairs_needed = condition

#     @car_id = Car.gen_car_id
#   end

#   def car_age
#     now = Date.today
#     now.year - model_year
#   end
# # each value wil serve to downgrade the value off of the origninal msrp
#   def calculated_price
#     msrp
#   end
# end
