class Cat
  def initialize(name)
    @name = name
  end

  def greeting
    "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
p kitty.name
