def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

string = 'My class of Ruby'
p spin_me(string) # "olleh dlrow"
p string



