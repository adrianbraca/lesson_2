# scissors cuts paper covers rock crushes
# lizard poison spock smashes scissors
# decapitates lizard eats paper disproves
# spock vaporizes rock crushes scissors

CHOICES = ['R', 'P', 'S', 'L', 'SP']

def spock_wins?(user, computer)
  if user == 'SP' && computer == 'R'
    prompt('Spock vaporizes Rock! You Win!')
  elsif user == 'SP' && computer == 'S'
    prompt('Spock smashes Scissors! You Win!')
  elsif user == 'SP' && computer == 'SP'
    prompt("It's a tie!")
  else
    prompt('Spock lost :(')
  end
end

def scissors_wins?(user, computer)
  if user == 'S' && computer == 'P'
    prompt('Scissors cuts Paper! You Win')
  elsif user == 'S' && computer == 'L'
    prompt('Scissors decapitates Lizard! You Win!')
  elsif user == 'S' && computer == 'S'
    prompt("It's a tie!")
  else
    prompt('Scissors lost :(')
  end
end

def rock_wins?(user, computer)
  if user == 'R' && computer == 'S'
    prompt('Rock crushes Scissors! You Win!')
  elsif user == 'R' && computer == 'L'
    prompt('Rock crushes Lizard! You Win!')
  elsif user == 'R' && computer == 'R'
    prompt("It's a tie!")
  else
    prompt('Rock lost :(')
  end
end

def paper_wins?(user, computer)
  if user == 'P' && computer == 'SP'
    prompt('Paper disproves Spock! You Win!')
  elsif user == 'P' && computer == 'R'
    prompt('Paper covers Rock! You Win!')
  elsif user == 'P' && computer == 'P'
    prompt("It's a tie!")
  else
    prompt('Paper lost :(')
  end
end

def lizard_wins?(user, computer)
  if user == 'L' && computer == 'SP'
    prompt('Lizard poisons Spock! You Win!')
  elsif user == 'L' && computer == 'P'
    prompt('Lizard eats Paper! You Win!')
  elsif user == 'L' && computer == 'L'
    prompt("It's a tie!")
  else
    prompt('Lizard lost :(')
  end
end

def prompt(message)
  puts "=>#{message}"
end

def welcome
  puts '================================'
  puts 'Rock Paper Scissors Lizard Spock'
  puts '================================'
  puts '____________RULES_______________'
  puts 'scissors cuts paper covers rock crushes'
  puts 'lizard poison spock smashes scissors'
  puts 'spock vaporizes rock crushes scissors'
  puts '_____________________________________'
end

welcome

loop do # Main loop
  user_choice = ''
  loop do
    prompt('Enter Rock(R) Paper(P) Scissors(S) Lizard(L), or Spock(SP)')
    user_choice = gets.chomp
    user_choice = user_choice.upcase
    if CHOICES.include?(user_choice)
      break
    else
      prompt('That is not a valid choicce')
    end
  end

  computer_choice = CHOICES.sample

  prompt("You have picked: #{user_choice}")
  prompt("Computer picked: #{computer_choice}")

  result = case user_choice
           when 'R'
             rock_wins?('R', computer_choice)
           when 'P'
             paper_wins?('P', computer_choice)
           when 'S'
             scissors_wins?('S', computer_choice)
           when 'L'
             lizard_wins?('L', computer_choice)
           when 'SP'
             spock_wins?('SP', computer_choice)
           end

  prompt("#{result}")

  prompt('Would like to Play again? (Y or N)')
  input = gets.chomp

  break unless input.downcase.start_with?('y')
end

prompt('Thanks for playing!')
