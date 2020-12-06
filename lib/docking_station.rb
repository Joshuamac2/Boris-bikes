require_relative 'bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'No bikes avilable' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Docking station full' if @bike
    @bike = bike
  end

  def bike
    @bike
  end

end
