require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity, :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes avilable' if empty?
    fail 'Broken bike' unless bikes.last.working?
    bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  def remove_bikes
    bikes.map do |bike|
      if bike.working? == false
        bikes.delete(bike)
      else
        bike
      end
    end
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end
