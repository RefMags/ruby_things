# 1.  use each method to print out each value

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |num| puts num }

# each element of an array is passed as an argument to the block.and we call the block parameter number.
# 2. from arr, print out values greater than 5

arr.each { |num| puts num if num > 5 }

# 3. Using the same array from #2, use the select method to extract all odd numbers into a new array

odd_num_arr = arr.select do |odd_num|
  odd_num.odd? #alternative odd_num % 2 != 0 as the logic
end

p odd_num_arr

# 4. append 11 to the end of original array and prepent 0 to the beginning

arr2 = arr.push(11)
p arr2

arr_3 = arr2.unshift(0)
p arr_3

# 5. get rid of 11 and append 3
arr_4 = arr_3.shift(11) # or arr_3.pop
p arr_4

arr_5 = arr_4.push(3) # or arr_4 << 3
p arr_5

# 6. Get rid of duplicates without specifically removing a particular value

arr_6 = arr_5.uniq
p arr_6

# 7. An array is a collection of elements that are ordered and referenced by index while a hash is a collection of key-value pair elements.

# 8. Create a hash

family = {  uncle: "John",
            aunt: "Lydia"
          }
# 9. from Hash

# get value of key b
h = {a:1, b:2, c:3, d:4}

p h[:b]

 # add to the hash the key-value '{e:5}'

h[:e] = 5

p h

# remove all pairs whose value is less than 3.5

new_h = h.keep_if { |key, value| value > 3.5}
p new_h

# 10. Can hash value be arrays? and vice versa?

# Yes

hash = { cities: ["kazuno", "odate"]}

array = [{ cities: ["kazuno", "odate"]}, { prefectures: ["akita", "iwate"]}]
