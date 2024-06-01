def letter_case_count(str)
  lowercase = 0
  uppercase = 0
  neither = 0
  str.each_char do |char|
    if ('a'..'z').include?(char)
      lowercase += 1
    elsif ('A'..'Z').include?(char)
      uppercase += 1
    else
      neither += 1
    end
  end
  Hash[lowercase: lowercase, uppercase: uppercase, neither: neither]
end

# ### second method

# def letter_case_count(str)
#   letter_count = {}
#   letter_count[:lowercase] = str.each_char.count { |char| char =~ /[a-z]/ }
#   letter_count[:uppercase] = str.each_char.count { |char| char =~ /[A-Z]/ }
#   letter_count[:neither] = str.each_char.count { |char| char =~ /[^A-za-z]/ }
#   letter_count
# end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
