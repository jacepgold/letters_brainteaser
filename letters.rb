require 'pry'

def letters_menu
  puts "\n------Letters Menu------"
  puts "1) Enter input"
  puts "2) Exit"
  user_input = get_input.to_i
  if user_input == 1 || user_input == 2
    if user_input == 1
      puts "What's Your Input?"
      user_string = get_input
      puts "You put #{user_string}"
      check_input(user_string)
      letters_menu
    elsif user_input == 2
      puts "Thanks for using my program."
      exit
    else
      puts "I'm sorry, there was some kind of issue. Please try again."
      letters_menu
    end
  elsif user_input < 1
    puts "I'm sorry, your number was too low."
    puts "Please try again."
    letters_menu
  elsif user_input > 2
    puts "I'm sorry, your number was too high."
    puts 'Please try again'
    letters_menu
  else
    puts "I'm sorry, please try again"
    letters_menu
  end
end

def check_input(user_string)
  has_multiple = false
  mulitple_count = 0
  puts "Entered check input with #{user_string}"
  input_array = user_string.split(" ")


  for item in input_array
    puts item
    letters = item.downcase.gsub(/[^a-z]/, '').chars
    binding.pry
    if letters == letters.uniq
      puts letters
    end

  end


  # s = "The quick brown fox jumps over the lazy dog."
  # .downcase
  # ("a".."z").all?{|c| s.count(c) <= 1}
  # # => false


  if has_multiple
    puts "Mulitple duplicate letters found."
    if multiple_count == 1
      puts "Highest repeated letters in the word: <word here>"
      letters_menu
    else
      puts "Multiples Found: "
      letters_menu
    end
  else 
    puts "No multiple letters found in any words."
    letters_menu
  end
end

def get_input
  print '> '
  user_input = $stdin.gets.strip;
end

def letters
  puts "------Welcome to Letters------"
  letters_menu

end

letters