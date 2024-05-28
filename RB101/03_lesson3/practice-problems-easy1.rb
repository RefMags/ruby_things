=begin
 2024/5/22
 this is my first look at the problems:
 get a field view of what the question want.
 attempt not to method hunt and apply rigour to thought.

 Verdict at attempting these questions this day: Question 6 was easy and I got it right.
 Some questions such as unique I understood even though my answers werent correct.
 👀: I should read more on documentation and memorize what some methods do.


=end

# QUESTION 1: What do you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# 1
# 2
# 3

# Why? the `uniq` method invoked on numbers selects the numbers that are
 # unique ie not repeating from array and print out each integer.

=begin
QUESTION 2: Describe the difference betwee `!` and `?` in Ruby.
Explain what happens in the following scenarios

`!` a bang indicates a `not` or destructive symbol.
`?` is question mark that describes whether an expression is true/false

1. what is != and where should you use it?
  - used when comparing two objects. reads as `not equal to` eg 4 != 4  # false

2. put ! before something, like !user_name

3. put ! after something, like words.uniq!
  - that is to indicate that we are mutating an object with a method invocation.
  - `!` shows that a method is being destructive.

4. put ? before something
  - puts something ? {block of code}

5. put ? after something

6. put !! before something, like !!user_name

=end


# QUESTION 3: Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice[26,34] = "urgent"

puts advice


# QUESTION 4: How do the following methods found in Ruby Array class differ?

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)

# QUESTION 5: Programmatically determine if 42 lies between 10 and 100.


# QUESTION 6: Starting with the string:
famous_words = "seven years ago..."

# show different ways to put the expected "Four score and" in front of it.

puts "Four score and" + " " + famous_words
puts "Four score and #{famous_words}"
famous_words.prepend("Four score and ")
"Four score and " << famous_words

# QUESTION 7: Building an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# we get a "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Un-nest this array

# Question 8: Given the hash below:

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Create an array containing only two element: Barney's name and Barney's number
