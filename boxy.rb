# Problem 5:
# Write a method - let's call it boxy(n) - which produces output in STDOUT as shown below.
# Example:
# boxy(1)
# Output:

# _
# ___
# |1|
# ‾‾‾
#  ‾

# boxy(3)
# Output:
#   _ _ _
#  _______
#  |1|2|3|
#  ‾‾‾‾‾‾‾
#   ‾ ‾ ‾

def boxy(n)
  times_printer(' _', n)
  times_printer('_', n * 2 + 1)
  number_pattern(n)
  times_printer('‾', n * 2 + 1)
  times_printer(' ‾', n)
end

def times_printer(string, times)
  print string * times
  puts
end

def number_pattern(n)
  for num in 1..n
    print "|#{num}"
  end
  puts '|'
end

boxy(1)

boxy(3)
