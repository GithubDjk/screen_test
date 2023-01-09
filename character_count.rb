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
