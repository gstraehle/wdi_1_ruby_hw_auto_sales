require 'date'

class Car

  #depreciation per year as a rate
  DEPRECIATION = .8
  # class variable
  @shared_ins_id = 353

  def self.shared_ins_id
    @shared_ins_id
  end

  def self.gen_ins_id
    @shared_ins_id += 1
  end

  attr_reader :car_id, :make, :model, :model_year, :msrp, :color, :transmission
  attr_accessor :mileage, :damage, :repairs_needed

  def initialize(make, model, year, color, trans, msrp, miles, damage, condition)
    @make = make
    @model = model
    @model_year = year
    @color = color
    @transmission = trans
    @msrp = msrp
    @mileage = miles
    @damage = damage
    @repairs_needed = condition
  end

  def car_age
    now = Date.today
    now.year - model_year
  end
# each value wil serve to downgrade the value off of the origninal msrp
  def calculated_price
    msrp
  end
end
