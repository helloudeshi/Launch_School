def solve(array)
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  letter_count_array = array.map { |str|  0 }
  i = 0
  loop do
    letter_count = letter_count_array[i]
    j = 0
    string = array[i]
    loop do
      letter_count += 1 if string[j].downcase == alphabet[j].downcase
      j += 1
      break if j == string.length
      letter_count
    end
    letter_count_array[i] = letter_count
    i += 1
    break if i == letter_count_array.size
  end
  letter_count_array
end

p solve(%w[asce abc sefrt])
p solve(%w[abode ABc xyzD]) == [4, 3, 1]
p solve(%w[abide ABc xyz]) == [4, 3, 0]
p solve(%w[IAMDEFANDJKL thedefgh xyzDEFghijabc]) == [6, 5, 7]
p solve(%w[encode abc xyzD ABmD]) == [1, 3, 1, 3]
