def sum_of_integers(num)
    sum = 0
    for i in (1..num)
        sum +=i
        i +=1
    end
    puts "The sum of the integers between 1 and #{num} is #{sum}"
end

def product_of_integers(num)
    product = 1
    for i in (1..num)
        product *= i
        i +=1
    end
    puts "The product of the integers between 1 and #{num} is #{product}"
end

def sum_or_product
    puts "Please enter an integer greater tahn 0:"
    number = gets.chomp.to_i
    puts "Enter 's' to compute the sum, 'p' to compute the product."
    operator = gets.chomp
    if operator == 's'
        sum_of_integers(number)
    elsif operator == 'p'
        product_of_integers(number)
    else
    puts "OOps..Wrong input, Try again from the begining"
    sum_or_product
    end
end

sum_or_product

