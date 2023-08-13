#Ex i passing_block

def take_block(&block) #the ampersand(&) indicates that the argument is a block
  block.call #the block argument is invoked using ".call"
end

take_block do
  puts "Block being called in the method"
end


# Ex 2.

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num| #number is being passed into the block
  puts "Block being called in the method! #{num}"
end

#Ex 3. proc_example

talk = Proc.new do
  puts "I am talking"
end

talk.call

#Procs can take in arguments if specified

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"

#Procs passed into methods
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method"
end

take_proc(proc)
