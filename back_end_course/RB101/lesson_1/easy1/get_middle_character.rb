def center_of(string)
     count = string.size
    if count%2 != 0
        middle_char = string[(count-1)/2]
    else 
        middle_char = string[(count-2)/2..(count/2)]
    end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'