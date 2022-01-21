
def welcome_message
  puts ''
  puts ' / \----------------------------------------, 
  \_,|                                       | 
     |    Welcome to Catalog Of Things app   | 
     |  ,--------------------------------------
     \_/_____________________________________/ '
     
  puts ' '
end

def check_input(num)
  if num == 1
    puts "num"
    list_all_books
  elsif num == 2
    list_all_labels
  elsif num == 3
    list_all_authors
  elsif num == 4
    add_book
  elsif num == 5
    !exit
  end
end

def options
  loop do  
  puts "Please select one of the below options by enterying the relevant number:
  1- List all books
  2- List all labels
  3- List all authors
  4- Add a book
  5- Exit
  "
  answer = gets.chomp
  unless [1, 2, 3, 4, 5].include?(answer.to_i)
    options    
  end 
  check_input(answer.to_i)
 end
end

def main
  welcome_message
  options
end

main