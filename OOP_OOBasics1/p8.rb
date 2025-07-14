class Cat
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end

  # def set_name=(name)
  #   @name = name
  # end

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.set_name = "Luna"
kitty.greet
