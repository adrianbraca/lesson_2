# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output results

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i.to_s == number
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")
name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end


loop do # Main loop
  first_number = ''
  second_number = ''
  operator = ''

  prompt("Welcome, #{name}!")

  loop do

    prompt("What's the first number")
    first_number = gets.chomp

    if valid_number?(first_number)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  loop do
    prompt("What's the second number")
    second_number = gets.chomp

    if valid_number?(second_number)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  prompt(operator_prompt)

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose a number between 1-4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             first_number.to_i + second_number.to_i
           when '2'
             first_number.to_i - second_number.to_i
           when '3'
             first_number.to_i * second_number.to_i
           when '4'
             first_number.to_f / second_number.to_f
  end

  prompt("Result: #{result}")
  prompt("Do you want to perform another calculation? (Y or N)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using Calculator!")
