class Pet
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
    # @features = features
  end

  # def to_s
  #   "My cat #{@name} is #{@age} years old and has #{@features} fur."
  # end
end

class Cat < Pet
  def initialize(name, age, features)
    super(name, age)
    @features = features
  end

  def to_s
    "My cat #{name} is #{age} years old and has #{@features} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch
