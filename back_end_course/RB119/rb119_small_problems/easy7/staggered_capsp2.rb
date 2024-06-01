def staggered_case(sentence)
  changed_str = ''
  up_case = true
  characters = sentence.chars
  characters.each do |char|
    if check_character(char)
      changed_str << if up_case
                       char.upcase
                     else
                       char.downcase
                     end
      up_case = !up_case
    else
      changed_str << char
    end
  end
  changed_str
end

def check_character(char)
  # regex `/i` flag (ignore case) detect letters
  char =~ /[a-z]/i #|| char =~ /[A-Z]/
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
