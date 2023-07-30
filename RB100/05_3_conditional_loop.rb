# Ex 3 conditional_loop
# adding conditions within a loop by printing all even numbers from 0 up to 10

i = 0
loop do
  i = i + 2 # break was not executed during the first 4 iterations
  puts i
  if i == 10 # at the 5th iteration, the "if" statement is evaluated as true, and break exited the loop
    break # this will cause execution to exit the loop
  end
end

# next_loop.rb
# similar to how "break" exit a loop, the keyword "next" can be used to skip the rest of current iteration

i = 0
loop do
  i = i + 2
  if i == 4
    next #skip rest of the code in this iteration
  end # "4" is not printed out because it was skipped over, execution continued to the next iteration.
  puts i
  if i == 10
    break
  end
end

# the block passed to "loop" introduces a new scope.
# inside the block, variables can be accessed that were initialized outside the block.
# outside the block, variables that were initialized inside the block are inaccessible.

# loop do
  #x = 42
  #break
# end
# puts x # erro printed as the variable created inside the loop is inaccessible from outside. put in other words --- x is not in scope outside of the block

x = 42
loop do
  puts x # <<<-- Prints 42 -- x is in scope inside the block
  x = 2 # the value of x can be changed
  break
end
puts x # 2 --- the value of x was changed
