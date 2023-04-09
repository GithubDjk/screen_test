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

def convert_number(number, to)
  if to == 8
    puts decimal_to_octal(number.to_i)
  elsif to == 2
    puts decimal_to_binary(number.to_i)
  else
    puts "No conversion found!"
  end
end

#method to convert decimal number to octal
def decimal_to_octal(decimal)
  octal = ""
  while decimal > 0
    remainder = decimal % 8
    octal = remainder.to_s + octal
    decimal /= 8
  end
  octal
end

#method to convert decimal number to binary
def decimal_to_binary(decimal)
  binary = ""
  while decimal > 0
    remainder = decimal % 2
    binary = remainder.to_s + binary
    decimal /= 2
  end
  binary
end

puts convert_number("10", 8) # Outputs: "12"
puts convert_number("10", 2) # Outputs: "1010"
