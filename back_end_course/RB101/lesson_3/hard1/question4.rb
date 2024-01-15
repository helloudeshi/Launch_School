def is_an_ip_number?(str)
  return false unless str.match?(/^\d+$/)
  number = str.to_i
  (0..255).cover?(number)
end

puts is_an_ip_number?('104511')
puts is_an_ip_number?('243')

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  true
end

# puts dot_separated_ip_address?('104511')
