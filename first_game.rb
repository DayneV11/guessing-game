# This is my first Ruby game!!
# Bask in its glorious 60 FPS, 4K resolution, and true-to-life sounds!!

puts "Hello! Welcome to my first game."
sleep (1)

# Get the player's name, then greet them.

print "What is your name, stranger? "
input = gets
name = input.chomp
puts "It's nice to meet you, #{name}! Now, let's get down to business, shall we?"
sleep (1)


# Generate a random number for the player to guess
puts "I am thinking of a number between 1-10."
sleep (1)

puts "Can you guess it?"
sleep (1)
target = rand(10) + 1

# Keep track of how many times the player guesses
# Initialize at 0
num_guesses = 0

# Check to see if player has guessed the number correctly
guessed_it = false
until num_guesses == 5 || guessed_it

# Start the game
# Convert input to integer, so you don't get letters/special characters as input
  puts "You've got #{5 - num_guesses} guesses remaining."
  print "Guess a number: "
  guess = gets.to_i
  num_guesses +=1

# Compare guess to the target number
# Display the appropriate message
  if guess < target
    puts "Looks like you're not quite there. Aim a little higher"
  elsif guess > target
    puts "Whoa there, buddy. Your guess was WAY too high. Bring it down a notch"
  elsif guess == target
    puts "Holy mother of-- I mean CONGRATULATIONS, #{name.upcase}!"
    guessed_it = true
  end
end

# If player runs out of turns before guessing the number, tell them what the number was.
unless guessed_it
  puts "Ouch... looks like you're SOL. The number I was thinking of was #{target}."
end
