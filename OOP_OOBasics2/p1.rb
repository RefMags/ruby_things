class Cat
  # declare a class method
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting

# Further exploration:

kitty = Cat.new
kitty.class.generic_greeting # => "Hello! I'm a cat!"
