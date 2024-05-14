# This is code written as part of PEDAC system thinking.

def sum_of_multiples(target, factors)
  multiples = []
  factors = [3, 5] if factors.length == 0

  factors.each do |factor| # we are calling `each` method on the variable `factors` and passing in the block as a parameter.
    current_multiple = factor

    while current_multiple < target
      multiples << current_multiple
      current_multiple += factor
    end
  end

  multiples.uniq.inject(0, :+)
end

puts sum_of_multiples(20, [3, 5])
puts sum_of_multiples(15, [3, 5])
