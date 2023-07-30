# Ex 1

x = 0
while x <= 10
  if x.odd? # checks to see if current variable in loop is odd
    puts x # if odd it print to screen.
  end
  x += 1 #the x then increments by one, and the loop proceeds to the next iteration
end

# Ex 2 conditional_while_loop_with_next.rb
# a "next" reserved word in a loop, will jump from that line to the next loop iteration without executing code beneath it.

x = 0
while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end


# Ex 3 conditional_while_loop_with_break.rb
# "break" reserved word will exit the loop immediately without executing more code

x = 0
while x <= 10
  if x == 7 #loop exits when the value x is reached
    break
  elsif x.odd?
    puts x
  end
  x += 1
end
