

def longest_word(sentence)
  words = sentence.split
  saved_word = words.shift

  words.each do |word|
    if saved_word.length <= word.length
      saved_word = word
    end
  end
  saved_word
end

sentence = "this is the greatest word length test"
p longest_word(sentence)


# user_input = gets

# loop do
#   name = user_input
#   break
# end

# if user_input
#   puts "Hello " + name
# end

def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
greeting = extend_greeting(greeting)

puts greeting


def name
  "George"
end

name = "Lisa"

def display_name
  puts name
end

display_name

name = "Lisa"

def name
  "George"
end

loop do
  puts name
  break
end
