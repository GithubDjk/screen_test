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

boxy(3)
