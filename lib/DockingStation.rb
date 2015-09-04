require_relative "Bike"

class DockingStation

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    fail 'Docking station full' if @bike
    @bike = bike

  end

end

# station = DockingStation.new
# p station
# bike = station.release_bike
# p bike
