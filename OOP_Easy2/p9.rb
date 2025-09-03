module Walkable
  def walk
  #  puts "#{title} #{name} struts forward"
  "struts forward"
  end
end

class Noble
  include Walkable

  attr_reader :name, :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  # We override the walk method from the Walkable method, interpolate state, and use super to call the method's version
  def walk
    puts "#{title} #{name} #{super}"
  end
end

byron = Noble.new("Byron", "Lord")
byron.walk
