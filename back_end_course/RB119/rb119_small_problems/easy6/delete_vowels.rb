VOWELS = %w(a e i o u A E I O U)

def remove_vowels(str)
  new_str = (str.map do |word|
    word.gsub(/[aeiouAEIOU]/,'')
  end)
  new_str

end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']