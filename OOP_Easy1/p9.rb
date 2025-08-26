class Pet
  def initialize(name, age, properties)
    @name = name
    @age = age
    @properties = properties
  end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@properties} fur."
  end
end

class Cat < Pet
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch
