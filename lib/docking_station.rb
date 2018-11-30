require_relative 'bike'

class Dockingstation

  attr_reader :bike

  def release_bike
  	# bike = Bike.new
    fail "No bikes to release" unless @bike
    @bike
  end

  def dock(bike)
    fail "Docking station is at full capacity" if @bike
    @bike = bike
  end

end
