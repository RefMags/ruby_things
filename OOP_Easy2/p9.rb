module Walkable
  def walk
   puts " struts forward"
  end
end

class Noble
  attr_reader :name, :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  include Walkable
end

byron = Noble.new("Byron", "Lord")
byron.walk
