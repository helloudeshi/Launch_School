def tip_calculator
    puts "What is the bill?"
    bill = gets.to_f
    puts "What is the percentatge?"
    percentage = gets.to_f
    tip = (bill * percentage/100).round(2)
    total_bill = tip + bill
    puts "The tip is $#{tip}"
    puts "Te total is $#{total_bill}"
end
 tip_calculator
