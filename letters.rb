require 'pry'

def letters
  puts "\n------Welcome to Letters!------"
  puts "1) Enter input"
  puts "2) Exit"
  user_input = get_input.to_i
  if user_input == 1 || user_input == 2
    if user_input == 1
      puts "What's Your Input?"
      user_string = get_input
      puts "You put #{user_string}"
      check_input(user_string)
      letters
    elsif user_input == 2
      puts "Thanks for using my program."
      exit
    else
      puts "I'm sorry, there was some kind of issue. Please try again."
      letters
    end
  elsif user_input < 1
    puts "I'm sorry, your number was too low."
    puts "Please try again."
    letters
  elsif user_input > 2
    puts "I'm sorry, your number was too high."
    puts 'Please try again'
    letters
  else
    puts "I'm sorry, please try again"
    letters
  end
end

def check_input(string)
  # If you get 0 or 1 that means it doesn't repeat so we start at 2
  highest_repeated = 2
  highest = []
  string.split(' ').each do |word|
    occurences = {}
    word.each_char do |char|
      occurences.has_key?(char) ? occurences[char] += 1 : occurences[char] = 1
    end
    high = occurences.sort_by{|key, value| value}.reverse.first.last
    if high == highest_repeated
      # found multiples so push onto the array
      highest_repeated = high
      highest << word
    elsif high > highest_repeated
      # found one with higher repeat count than what was set so we reset the array
      highest_repeated = high
      highest = [word]
    end
  end
  if highest.length >= 2
    puts "Multiple Have Been Found: #{highest.join(', ')}"
  elsif highest.length == 1
    puts "The Highest repeated letters is in the word: #{highest.join(',')}"
  else
    puts 'No multiple letters found in any word...'
  end  
end

def get_input
  print '> '
  user_input = $stdin.gets.strip;
end

letters