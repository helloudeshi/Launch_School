puts "Enter the first number:"
num1 = gets.chomp.to_f
num2 = nil
loop do 
puts "Enter the second number:"
num2 = gets.chomp.to_f
break if num2 !=0
end

puts "#{num1} + #{num2} = #{(num1+num2).round(2)}"
puts "#{num1} - #{num2} = #{(num1-num2).round(2)}"
puts "#{num1} * #{num2} = #{(num1*num2).round(2)}"
puts "#{num1} / #{num2} = #{(num1/num2).round(2)}"
puts "#{num1} % #{num2} = #{(num1%num2).round(2)}"
puts "#{num1} ** #{num2} = #{(num1**num2).round(2)}"
