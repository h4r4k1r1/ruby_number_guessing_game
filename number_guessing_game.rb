random_number = (1 + rand(50))

puts "Yo, Welcome to the guessing game "
sleep 1
puts "Pick any number between 0 and 50"
sleep 1
user_guess = ""
attempts = 0

until user_guess == random_number do
    if attempts >= 8
      puts "Game over! You Lose :-("
      puts "The number was: #{random_number}"
      break
    else
      print "Enter your number? "
      user_guess = gets.to_i
      attempts += 1
      if user_guess == random_number
          puts "Hooray! The number was: #{random_number}. You won!"
      elsif user_guess < random_number
          puts "Your number is lower than mine"
     else
          puts "Your number is higher than mine "
      end
    end
end
