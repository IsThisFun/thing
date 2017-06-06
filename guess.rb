puts "Welcome to the Guessing Game!!!"
puts "What's your name?"
name = gets.chomp.to_i
puts "Pick your max range"
large_num = gets.chomp.to_i
puts "How many tries would you like?"
num_tries = gets.chomp.to_i
ran_num = rand(large_num) + 1
num_guess = 0
tries = 0
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
puts "WOAH YOU'RE A WIZARD {#name}"
end
tries += 1
limit = num_tries - tries 
puts "You have #{limit} out of #{num_tries}"
if tries == num_tries 
  puts "GAME OVER"
  10.times do
  puts ":("
  end
  end
  end
