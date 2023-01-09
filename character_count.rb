# Problem 3:
# Loop over a string of arbitrary length, and count the occurrence of each character in the string.
# Note: You can ignore accounting <whitespace>. 

# Eg.
# Input: “hello how are you”
# Output: h: 2, e: 2, l: 2, o: 3, : 3, w: 1, a: 1, r: 1, y: 1, u: 1

def count_characters(string)
  counts = {}

  string.each_char do |char|
    next if char == ' '

    if !counts.has_key?(char)
      counts[char] = 1
    else
      counts[char] += 1
    end
  end

  counts
end

string = 'hello how are you'

puts count_characters(string)
