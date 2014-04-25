class Dealer

  attr_reader :dealer_name, :location
  attr_accessor :corrupt_or_honest
  def initialize(dealer_name, location, corrupt)
    @dealer_name = dealer_name
    @location = location
    @corrupt_or_honest = corrupt
  end
end

