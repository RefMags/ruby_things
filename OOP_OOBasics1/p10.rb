module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  include Walkable

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk
