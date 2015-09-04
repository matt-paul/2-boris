require_relative "Bike"

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end


  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike

  end

  private

  def full?
    @bikes.count >=20
  end

  def empty?
    @bikes.empty?
  end

end

# station = DockingStation.new
# p station
# bike = station.release_bike
# p bike
