# a simple example

def doubler(start)
  puts start * 2
end

doubler(2)
doubler(4)

# Ex 2. recursion version of Ex1

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(3)
doubler(8)

# Ex 3. calculating the nth number in the fibonacci sequence
