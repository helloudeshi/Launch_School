

def repeat(string, number)
    count = 0
    loop do 
        puts "#{string}"
        count +=1
        break if count ==number
    end
# end

def repeat(string, number)
    number.times {puts string}
end
repeat('Hello', 3)
repeat('Welcome',5)




