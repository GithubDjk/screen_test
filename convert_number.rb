# Problem 4:
# Write a function/method in a generic manner such that it can convert from one number system
# to another; consider decimal to octal and binary. This method should take in three arguments as
# indicated below.
# function convert_number(number, from, to)
# Eg:
# Input: convert_number(42, “decimal”, “octal”)
# Output: 52
# Input: convert_number(42, “decimal”, “binary”)
# Output: 101010

def convert_number(number, from, to)
  from = number.to_i(from)

  from.to_s(to)
end

puts convert_number('10', 10, 8) # Outputs: "12"
puts convert_number('10', 10, 2) # Outputs: "1010"
