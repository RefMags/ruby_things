class Transform
  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def uppercase
    data.upcase
  end

  def self.lowercase(data)
    data.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
# We are calling a method on the class; thus we use self
puts Transform.lowercase('XYZ')
