def traingle(num)
    i = 1
    for i in i..num do 
        puts "#{' ' * (num-i)}#{'*' * i}"
        i +=1
    end 
end

# traingle(5)
traingle(9)
