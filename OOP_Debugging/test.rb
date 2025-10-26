class Vehicle
  WHEELS = 4 # Constant defined in superclass
end

class Car < Vehicle
  def self.wheel_count
    # Ruby first looks for WHEELS in Car.
    # Not finding it, it checks the inheritance hierarchy.
    # It finds WHEELS in Vehicle and returns its value.
    "This vehicle has #{WHEELSS} wheels."
  end
end

puts Car.wheel_count # => "This vehicle has 4 wheels."
