def crunch(str)
  result = ''
  str.each_char do |char|
    result << char if char != result[-1]
  end

  result
end

p crunch('dddddaaaillly ddouuubllle') == 'daily double'
