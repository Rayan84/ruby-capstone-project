require_relative 'functions'
require_relative 'app'
include Functions

def welcome_message
  puts ''
  welcome = '
    / \----------------------------------------,
    \_,\                                        \
        \   Welcome to Catalog Of Things app     \
         \   ,--------------------------------------
          \_/_____________________________________/ '

  welcome.each_char do |char|
    print char
    sleep(0.01)
  end
end

def check_input(num)
  session = App.new
  if num == 1
    list_all_books(session)
  elsif num == 2
    list_all_labels(session)
  elsif num == 3
    list_all_authors(session)
  elsif num == 4
    add_item(session)
  elsif num == 5
    !exit
  end
end

def options
  loop do
    puts '
    '
    puts "Please select one of the below options by enterying the relevant number:
  1- List all books
  2- List all labels
  3- List all authors
  4- Add an item
  5- Exit
  "
    answer = gets.chomp
    options unless [1, 2, 3, 4, 5].include?(answer.to_i)
    check_input(answer.to_i)
  end
end

def main
  welcome_message
  options
end

main
