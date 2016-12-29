VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a Valid Choice")
    end
  end

  computer_choice = %w(rock paper scissors).sample
  puts "You chose: #{choice}; Computer chose: #{computer_choice}"

  if (choice == 'rock' && computer_choice == 'scissors') ||
     (choice == 'paper' && computer_choice == 'rock') ||
     (choice == 'scissors' && computer_choice == 'paper')
    prompt("You won!")
  elsif (computer_choice == 'rock' && choice == 'scissors') ||
         (computer_choice == 'paper' && choice == 'rock') ||
         (computer_choice == 'scissors' && choice == 'paper')
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end

    prompt("Do you want to play again? (Y or N)")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")
