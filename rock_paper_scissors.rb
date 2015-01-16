def say(message)
  puts "---> #{message}"
end

choices = {'r'=> 'Rock', 'p' => 'Paper', 's' => 'Scissors'}

say("Welcome to Rock, Paper, Scissors!  Good luck!")

loop do
  say("Choose one: (R/P/S)")
  begin 
    human_choice = gets.chomp.downcase
  end until choices.keys.include?(human_choice)

  computer_choice = choices.keys.sample
  human_choice_full = choices.fetch(human_choice)
  computer_choice_full = choices.fetch(computer_choice)

  say("Human picked #{human_choice_full} and Computer picked #{computer_choice_full}.")

  if human_choice == computer_choice
    puts "It's a tie!"
  elsif (human_choice == 'p' && computer_choice == 'r') ||
    (human_choice == 'r' && computer_choice == 's') ||
    (human_choice == 's' && computer_choice == 'p')
    puts "Congratulations!  You win!"
  else 
    puts "You lose!"
  end
  say("Play again? (Y/N)")
  break if gets.chomp.downcase != 'y'
end