def searching_num
    numbers = []
    puts "Enter the 1st number: "
    num1 = gets.chomp.to_i
    numbers << num1
    puts "Enter the 2nd number: "
    num2 = gets.chomp.to_i
    numbers << num2
    puts "Enter the 3rd number: "
    num3 = gets.chomp.to_i
    numbers << num3
    puts "Enter the 4th number: "
    num4 = gets.chomp.to_i
    numbers << num4
    puts "Enter the 5th number: "
    num5 = gets.chomp.to_i
    numbers << num5
    puts "Enter the last number: "
    last = gets.chomp.to_i
    p numbers
    if numbers.include?(last)
        puts "The number #{last} appears in #{numbers}"
    else 
        puts "The number #{last} does not appear in #{numbers}"
    end

end

searching_num


    
    
    
    
    

