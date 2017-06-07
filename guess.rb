user_input = ""
while user_input != 3  
  puts "Welcome to Ruby's Fun Game Pack!!!!!"
  puts "------------------------------------"
  puts "          Main Menu                 "
  puts "1. Guessing Game"
  puts "2. Rock, Paper, Scissors"
  puts "3. Quit"
  puts "Please enter your selection"
  user_input = gets.chomp.to_i
  if user_input == 1
    puts
    puts "Welcome to the Guessing Game!!!"
    puts
    puts "Pick your max range"
    puts
    large_num = gets.chomp.to_i
    puts "How many tries would you like?"
    puts
    num_tries = gets.chomp.to_i
    ran_num = rand(large_num) + 1
    guess = 0
    tries = 0
    puts
    puts "Go!!!"
    until guess == ran_num || tries == large_num
    puts
    puts"----------------------------------------"
    puts "Guess a number between 1 and #{large_num}"
    guess = gets.chomp.to_i
    if guess > ran_num 
      puts "------- Too High. Guess Lower --------"
    elsif guess < ran_num
      puts "------- Too Low. Guess Higher --------"  
    elsif guess == ran_num
    print "WOAH YOU'RE A WIZARD"
      1000.times do
        puts "Winner!!!"
      end
    end
    end
    tries += 1
    limit = num_tries - tries 
    puts "You have #{limit} out of #{num_tries}"
    if tries == num_tries 
      print "GAME OVER"
      1000.times do
      print "You Lose!!!"
      end
    end
elsif user_input == 2 
    puts
  options = ["rock", "paper", "scissors"]
   computer_choice = options[rand(options.length)]
   #puts "computer choice is: " + computer_choice
  puts "Rock, Paper, Scissors?"
  puts "What's your choice?"
  user_input = gets.chomp.downcase
  
  while !(user_input == "rock" || user_input == "paper" || user_input == "scissors")
   puts "Invalid choice, enter Rock, Paper, or Scissors"
   puts "What's your choice?"
   user_input = gets.chomp.downcase
  end 
  if (user_input == "rock" || user_input == "paper" || user_input == "scissors")
   if (user_input == computer_choice)
     puts "We got the same!!!"
   elsif (user_input == "rock" && computer_choice == "scissors")
     puts "computer choice is: " + computer_choice + " ,you win! :)"
   elsif (user_input == "rock" && computer_choice == "paper")
     puts "computer choice is: " + computer_choice + " ,computer wins :("
   elsif (user_input == "paper" && computer_choice == "scissors")
     puts "computer choice is: " + computer_choice + ",computer wins :("
   elsif (user_input == "paper" && computer_choice == "rock")
     puts "computer choice is: " + computer_choice + ", you win! :)"
   elsif (user_input == "scissors" && computer_choice == "rock")
     puts "computer choice is: " + computer_choice  ",computer wins :("
   elsif (user_input == "scissors" && computer_choice == "paper")
     puts
     puts "computer choice is: " + computer_choice + ", you win! :)"
   end
  end

elsif user_input == 3
      puts "Bye"
  end
end

