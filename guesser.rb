# guesser.rb

# Create guesser.rb.  When this program starts, it asks you to think of a number from 1 to 100.  It then makes guesses.  You tell it whether the guess is too low, too high, or correct, until it guesses your number.  The program will need to keep track of the lowest and highest possible remaining values, and it should guess something between them.  The program should prompt you again if you say something besides "too low", "too high" or "correct".  The program should also handle the case where you are lying, and should call you out.  You are lying if the program correctly guesses the number, but you don't say so.  You are lying if you tell the program that its guess is too low, when it's really too high, or vice versa.  Of course, the program won't be able to tell right away that you are lying, as it will have to exhaust the possible answers.  Make the program efficient -- basically a binary search.  Once it guesses correctly, or figures out you are lying, it should prompt you to play again, exiting if you decline.




# v2
# def guesser
#   puts "Think of a number between 1 and 100, and I'll try to guess it."

#   low = 1
#   high = 100

#   loop do
#     guess = (low + high) / 2
#     puts "Is your number #{guess}? (too low/too high/correct)"
#     response = gets.chomp.downcase

#     case response
#     when "too low"
#       if guess >= high
#         puts "You're lying! I guessed #{guess}, and you said it was too low. This is impossible."
#         break
#       end
#       low = guess + 1
#     when "too high"
#       if guess <= low
#         puts "You're lying! I guessed #{guess}, and you said it was too high. This is impossible."
#         break
#       end
#       high = guess - 1
#     when "correct"
#       puts "Yay! I guessed it right. Your number is #{guess}."
#       break
#     else
#       puts "Please respond with 'too low', 'too high', or 'correct'."
#     end

#     if low > high
#       puts "You're lying! There are no numbers left to guess."
#       break
#     end
#   end

#   puts "Do you want to play again? (yes/no)"
#   answer = gets.chomp.downcase
#   if answer == "yes" || answer == "y"
#     guesser
#   else
#     puts "Thank you for playing!"
#   end
# end

# guesser



#v1
def guesser
  puts "Think of a number between 1 and 100.  On each guess, enter:"
  puts "  'l' if the guess is too low"
  puts "  'h' if the guess is too high"
  puts "  'c' if the guess is correct"
  puts "  'quit' if you want to quit"
  puts
  input = nil
  min = 1
  max = 100
  while true
    guess = (min + max) / 2
    print "Is your number #{guess}? "
    input = gets.chomp
    if input == "l"
      min = guess + 1

    elsif input == "h"
      max = guess - 1

    elsif input == "c"
      puts "Yay!"
      break

    elsif input == "quit"
      puts "Quitting..."
      break

    else
      puts "I didn't understand that answer."


    end
  end
end
guesser
