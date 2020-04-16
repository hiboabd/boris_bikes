
class DockingStation
  attr_reader :shed

  def initialize
    @shed = []
  end

  def release_bike
      if @shed.empty?
        fail 'Error: shed empty'
      else
        Bike.new
      end
  end

  def dock(bike)
    @shed.push(bike)
  end

end

class Bike
  def working?
    true
  end
end
