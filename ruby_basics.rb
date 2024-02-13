# 1. Creating an uppercase version of "xyz"

# assign "xyz" to a variable and prepend it with a period to #upcase method
s = 'xyz'
p s.upcase

# 2. Inserting values between an array

a = %w(a b c d e)
# the objects given are before the element at offset index
# therefore c and d are at index 2 and 3
a.insert(3, 5, 6, 7)

# 3. optional arguments, what would the statement print?

s = 'abc def ghi, jkl mno pqr, stu vwx yz'

# the split would occur just as if the field_sep was given as a space character.
puts s.split.inspect

# =>["abc", "def", "ghi,", "jkl", "mno", "pqr,", "stu", "vwx", "yz"]

# b)the split occurs at the field separator given (',')
puts s.split(',').inspect
# => ["abc def ghi", " jkl mno pqr", " stu vwx yz"]

# c) the split separator occurs at the field_sep(',') and its 2nd occurance

puts s.split(',', 2).inspect

# => ["abc def ghi", " jkl mno pqr, stu vwx yz"]

# PART 2
a = 'Xyzzy'

def my_value(b)
  b = a + a
end

my_value(a)
puts a
