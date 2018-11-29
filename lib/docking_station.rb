require_relative 'bike'

class Dockingstation

  attr_reader :bike

  def release_bike
  	# bike = Bike.new
    # Bike.new
    # @bike
    fail "No Bikes Available at the moment" unless @bike
    @bike
  end

  def dock(bike)
  	@bike = bike
  end

end
