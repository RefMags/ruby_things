=begin
in this method, we want to ensure that we can print string by the number of times
that is part of the argument.

`times` method can be called in the integer object.
such that if we invoke a method to an integer and pass it a block we can iterate
through as many times as the integer specified.

Example
4.times {|b| puts "car"}
Outputs:
car
car
car
car

the iterative method `times` is called on an integer, `4`, and passed a block
that has `b` as block parameter.
Inside the block `puts` method is called and passed in a str object `car` to print.
=end
def repeat(str, int)
  int.times {|b| puts str}
end

repeat("hello", 3)
