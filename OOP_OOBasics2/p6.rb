# class Cat
#   COLOR = "purple"
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet

class Cat
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  # def greet
  #   puts "Hello! My name is #{name} and I'm a #{color} cat!"
  # end
  #
  def to_s
    "Hello! My name is #{name} and I'm a #{color} cat!"
  end
end

kitty = Cat.new('Sophie', "purple")
puts kitty

betty = Cat.new("Betty", "ginger")
puts betty
