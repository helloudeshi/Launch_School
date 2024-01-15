# ask the user for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# perform the operation
# displays the result
def promt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i.to_s == number
end

def operator_to_message(op)
  case op
  when '1'
    'add'
  when '2'
    "Substract"
  when '3'
    "multiply"
  when '4'
    "devided by"
  end
end

def calculator
  promt("Welcome to calculator! Enter your name: ")
  name = ''
  loop do
    name = Kernel.gets().chomp()
    if name.empty?()
      promt("Make sure to use a valid name.")
    else
      break
    end
  end
  promt("Hi, #{name}!")

  loop do # main loop
    number1 = ''
    loop do
      promt("Enter 1st number:")
      number1 = Kernel.gets().chomp()
      if valid_number?(number1)
        break
      else
        promt("hmm... that doesn't look like a valid number")
      end
    end

    number2 = ''
    loop do
      promt("Enter 2nd  number:")
      number2 = Kernel.gets().chomp()
      if valid_number?(number2)
        break
      else
        promt("hmm... that doesn't look like a valid number")
      end
    end

    operator_promt = <<-MSG
     What operation would you like to perform?#{' '}
     1)add
     2)substract
     3)multiply
     4)divide
    MSG
    promt(operator_promt)
    operator = ''
    loop do
      operator = Kernel.gets.chomp
      if %w(1 2 3 4).include?(operator)
        break
      else
        promt("Must choose 1, 2, 3, 4")
      end
    end

    result = case operator
             when '1'
               number1.to_i + number2.to_i
             when '2'
               number1.to_i - number2.to_i
             when '3'
               number1.to_i * number2.to_i
             when '4'
               (number1.to_f / number2.to_f).round(2)
             end
    promt("#{number1} #{operator_to_message(operator)} #{number2} is #{result}")
    promt("Do you want to perform another calculation? (Y to calculate again)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
  end
  promt("Thank you for using calculator. Good Bye..!")
end

calculator
