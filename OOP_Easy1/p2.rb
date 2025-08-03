class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    n = @name.upcase
    "My name is #{n}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name
