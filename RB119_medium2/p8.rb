=begin
  Problem : Given an integer, find next featured number number greater than arg.
  - should be odd,
  - digit should be unique values

  Ex:
  12 / 7 = 1 + 1
  7 * 2 = 14 not odd
  7 * 3 = 21 odd;

  check for uniq
  21 => [2, 1] ; digits.uniq == digits.length
                True
  return 21

  DS:
  - Integer to find the division of arg. with 7 and product,
  - Array to check for uniq and return boolean
  - return integer

  ALGO:
  - CALCULATE the division of arg by 7,
  - MULTIPLY the division result by 7
    - COMPARE the product of 7 with div.number with arg.
    - IF product is odd : return product
    - IF product is even increase div.num and find product check for odd

  - FOR returned odd product number:
  - Convert the number to array of digits
  - COMPARE the length of digits to their uniq equivalent*
    - IF same length: true => contains unique values; return value
    - IF not: false => doesnt contain unique values, increment by 14; not 7 as that might
    land us with next even multiple of 7
    - else return message
=end

def featured(num)
  result = (num / 7) + 1
  product = result * 7

  if product.odd?
    product
  else
    product = (result += 1) * 7
  end

  # checking for uniq
  loop do
    digit = product.digits.reverse

    return product if digit.length == digit.uniq.length
    product += 14
    break if product >= 9_999_999_999
  end
  "There is no possible number that fulfills those requirements"
end

p featured(12) #== 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
