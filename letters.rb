require 'pry'

def letters_menu
  puts "\n------Letters Menu------"
  puts "1) Enter input"
  puts "2) Exit"
  user_input = get_input.to_i
  if user_input == 1 || user_input == 2
    if user_input == 1
      puts "What's Your Input?"
      user_input = get_input
      puts "You put #{user_input}"
      check_input(user_input)
      letters_menu
    elsif user_input == 2
      puts "Thanks for using this program!"
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

def check_input(user_input)
  puts "Entered check input with #{user_input}"

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