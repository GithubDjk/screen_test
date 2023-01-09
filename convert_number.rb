def convert_number(number, from, to)
  from = number.to_i(from)

  from.to_s(to)
end

puts convert_number('10', 10, 8) # Outputs: "12"
puts convert_number('10', 10, 2) # Outputs: "1010"
