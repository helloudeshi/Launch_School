def staggered_case(sentence)
  characters = sentence.downcase.chars
  characters.each_index do |index|
    characters[index] = characters[index].upcase if index.even?
  end
  characters.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
