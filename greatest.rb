def find_greatest(x, y, z)
  max = x

  max = y if y > max

  max = z if z > max

  max
end

puts 'Enter the first number:'
x = gets.to_i
puts 'Enter the second number:'
y = gets.to_i
puts 'Enter the third number:'
z = gets.to_i

greatest = find_greatest(x, y, z)
puts "The greatest number is #{greatest}"
