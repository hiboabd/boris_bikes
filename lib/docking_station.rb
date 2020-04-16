
class DockingStation
  attr_reader :shed

  def initialize
    @shed = nil
  end

  def release_bike

    if @shed == nil 
      fail 'Error: shed empty' # in spec had to dock something on earlier tests to stop this code running
    else
      Bike.new
    end
  end

  def dock(bike)
    @shed = bike
  end

end

class Bike
  def working?
    true
  end
end
