class Student
  attr_reader :name, :year

  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student # 1
  attr_reader :parking

  def initialize(name, year, parking)
    super(name, year) # 3
    @parking = parking # 4
  end
end

class Undergraduate < Student # 2
  def initialize(name, year)
    super # 5
  end
end


# For testing cases we inserted getter methods to access the state of the instances of the classes.

tom = Graduate.new('Tom', 2, "South wing mechanical")
sam = Undergraduate.new('Sam', 1)

# Using getter methods, we can read the `name` of `Graduate` and `Undergraduate` students
puts tom.name # => Tom
puts sam.name # => Sam

# Only `tom` has access to parking
puts tom.parking # => South wing mechanical
