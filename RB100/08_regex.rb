# 1. "powerball" =~ /b/ => returns 5 ; counts indices starting at zero. 5 is a truthy value and can be evaluated as below

# boolean_regex

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "no match here"
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

#2. =~ can be substituted by "match" method
# matchdata

def has_a_b?(string)
  if /b/.match(string)
    puts "Absolutely have a match here!"
  else
    puts "No match here!"
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
