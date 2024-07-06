# find_number.rb

# Program 3
secret_number = rand(1..100)

loop do
  puts "Guess a number between 1 and 100."
  guess = gets.chomp.to_i
  if guess == 0
    puts "Invalid guess. Please enter a number."
    next
  end
  if guess > secret_number
    puts "Your guess is too high."
  elsif guess < secret_number
    puts "Your guess is too low."
  else
    puts "Your guess is correct!"
    puts "Would you like to play again? (y/n)"
    play_again = gets.chomp
    if play_again.downcase == "y"
      secret_number = rand(1..100)
    else
      break
    end
  end
end
