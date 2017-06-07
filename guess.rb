#user_input = ""
#while user_input != 3 
puts "Welcome to Ruby's Fun Game Pack!!!!!"
puts "------------------------------------"
puts "          Main Menu                 "
puts "1. Guessing Game"
puts "2. Rock, Paper, Scissors"
puts "3. Quit"
puts "Please enter your selection"
  user_input = gets.chomp.to_1
  if user_input == 1
    puts "Welcome to the Guessing Game!!!"
    puts
    name = gets.chomp.to_i
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
    print "You have #{limit} out of #{num_tries}"
    if tries == num_tries 
      print "GAME OVER"
      10000000.times do
      print "ERROR!!!"
      end
    #elsif user_input == 2 
      #puts "Under Construction"
    #elsif user_input == 3
      #puts "Bye"
  #end
#end
