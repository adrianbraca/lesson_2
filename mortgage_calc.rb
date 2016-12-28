=begin
  input
    loan amount
    APR - Annual Percentage Rate
    loan duration
  output
    monthly interest Rate
    loan duration in months
=end
def positive?(num)
  num > 0
end

def monthly_interest_rate(apr)
  apr = apr.to_f / 100
  j = apr / 12
end

def loan_duration_months(loan_duration)
  n = loan_duration.to_f * 12
end

def calc_monthly_payment(p, j, n)
  m = p * (j / (1 - (1 + j)**(-n)))
end

puts "======================================"
puts "Welcome to Mortgage Payment Calculator"
puts "======================================"

loop do # Main loop
  loan_amount = ''
  apr = ''
  loan_duration = ''

  loop do # validate number
    puts "Please the loan amount $$$"
    loan_amount = gets.chomp
    loan_amount = loan_amount.to_f

      if loan_amount.positive?
        break
      else
        puts "ERROR: You must enter a positive number!"
      end
  end

  loop do
    puts "Please enter the Annual Percentage Rate(APR)"
    puts "Note: 5 = 5%"
    apr = gets.chomp
    apr = apr.to_f

      if apr.positive?
        break
      else
        puts "ERROR: You must enter a positive number!"
      end
  end

  loop do
    puts "Please enter the loan duration(Years)"
    loan_duration = gets.chomp
    loan_duration = loan_duration.to_f

      if loan_duration.positive?
        break
      else
        puts "ERROR: You must enter a positive number!"
      end
  end

  puts "Your monthly payment will be $#{calc_monthly_payment(loan_amount,
  monthly_interest_rate(apr), loan_duration_months(loan_duration)).round(2)}"

  puts "Would like to Calculate another payment? (Y or N)"
  input = gets.chomp

  break unless input.downcase.start_with?('y')
end

puts "Thanks for using Mortgae Payment Calculator!"
