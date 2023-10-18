# def some_method
#   a = 1
#   5.times do
#     puts a
#     b = 2
#   end

#   puts a
#   # puts b
# end
# some_method
# <<Method parameters not used>>
# def greetings(str)
#   puts "Goodbye"
# end

# word = "Hello"

# greetings(word)

# <<Method parameters used>>
# def greetings(str)
#   puts str
#   puts "Goodbye"
# end

# word = "Hello"

# greetings(word)

# << Blocks not executed>>

# def greetings
#   puts 'Goodbye'
# end

# word = 'Hello'

# greetings do
#   puts word
# end

# << Blocks executed>>
# def greetings
#   yield
#   puts 'Goodbye'
# end

# word = 'Hello'

# greetings do
#   puts word
# end


# << Pass by Value>>

def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
p change_name(name)
puts name           # => jim
