# 1.
car = {type: sedan,
      color: blue,
      mileage: 80_000}

      or
      # older sytanx
car = {:type => sedan,
      :color => blue,
      :mileage => 80_000}

# 2. add :year and the value 2003

car = {type: sedan,
      color: blue,
      mileage: 80_000}
car[:year] = 2003

# 3. Broken Odometer
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}
p car.delete(:mileage)


# 4. What Color?
car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]
puts car.fetch(:color)


# 5. Labeled Numbers

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |key, value| puts "A #{key} is #{value}. " }

# 6.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |key, value| value / 2 }
p half_numbers

# 7. Low, Medium, or High?


numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |key, value| value < 25 }
p low_numbers


# 8. Low or Nothing

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

# 9. Multiple car; create a nested hash
numbers = {

  car    : { type:   'sedan',
            color: 'blue',
            year:    2003}
  truck : { type:   'pickup',
            color: 'red',
            year:    1998}
}

# 10. Which Collection? re-write hash to array with nested key values

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

p car.to_a
