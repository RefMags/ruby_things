class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # an instance method using `self` references the calling object ir `kitty`
  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify
