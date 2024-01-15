def prompt(message)
  Kernel.puts("=> #{message}")
end

def loan_amount
  prompt("Welcome to Mortgage calculator")
  loan = ''
  loop do
    prompt("Enter your loan amount in USD:")
    loan = Kernel.gets.chomp()
    if loan.to_i.to_s == loan
      break
    else
      prompt("Oops..wrong input.")
    end
  end
  loan.to_i
end

def loan_duration
  years = ''
  loop do
    prompt("Enter your loan duration in years:")
    years = Kernel.gets.chomp()
    if years.to_i.to_s == years
      break
    else
      prompt("Oops..wrong input.")
    end
  end
  years.to_i
end

def annual_rate
  annual = ''
  loop do
    prompt("Enter your annual interest rate as a percentage:")
    annual = Kernel.gets.chomp()
    if (annual.to_i.to_s == annual) && (annual.to_i < 100)
      break
    else
      prompt("Oops..wrong input.")
    end
  end
  return annual.to_f
end

def mortgage_calculator()
  amount = loan_amount()
  monthly_rate = (annual_rate / 100 / 12).round(2)
  months = loan_duration * 12
  monthly_payment = amount *
                    (monthly_rate /
                    (1 - ((1 + monthly_rate)**(-months))))

  prompt("Your loan of #{amount} with
       #{monthly_rate} monthly interest rate has
    #{monthly_payment.round(2)} amount for #{months} months")
end
mortgage_calculator
