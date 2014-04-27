require_relative 'car'

class UsedCar < Car

  DEP = 0.90
  #depreciation per year as a rate, roughly a constant


  #getter method for items staying constant

  #setter method for items that may change
  attr_accessor :mileage, :repairs_needed, :poor_condition


  def initialize(make, model, year, color, trans, msrp, miles, damage_val, poor_condition = false)
    super(make, model, year, color, trans, msrp)
    @mileage = miles
    @repairs_needed = damage_val
    @poor_condition = poor_condition
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
     calc = (msrp.to_f * DEP ** (car_age.to_f + 1.0) * (poor_condition ? 1.0 : 0.7) * mileage_deduction(mileage)) - repairs_needed
     calc.to_i
   end
end
