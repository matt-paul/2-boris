require_relative "Bike"

class DockingStation

  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize (capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes available" if empty?
    bikes.pop
  end


  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike

  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end

end

# station = DockingStation.new
# p station
# bike = station.release_bike
# p bike
