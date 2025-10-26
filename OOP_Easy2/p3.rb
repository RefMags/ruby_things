class House
  include Comparable
  attr_reader :price, :size

  def initialize(price, size)
    @price = price
    @size = size
  end

  def <=>(other)
    price <=> other.price
  end

  def <(other)

  end
end

home1 = House.new(100_000, 45)
home2 = House.new(150_000, 50)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

puts "Home 1 is smaller" if home1 < home2
puts "Home 2 is more bigger" if home2 > home1
