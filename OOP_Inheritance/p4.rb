class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  attr_accessor :speed

  def start_engine(speed)
    super() << "Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')
