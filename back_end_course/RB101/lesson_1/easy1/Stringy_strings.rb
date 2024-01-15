def stringy(number) 
    count = 1
    str = "1" 
    while count < number do 
        if str[count-1] == "1"
            str << "0" 
        else 
            str << "1"
        end
        count +=1
    end
    str 
end 

## method 2
def stringy(size)
    numbers = []
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
    numbers.join
  end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'