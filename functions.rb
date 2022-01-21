require_relative 'book'
require_relative 'item'
module Functions

  def list_all_books
    puts "listing all books..."
  end

  def list_all_labels
    puts "listing all labels..."
  end

  def list_all_authors
    puts "listing all authors..."
  end

  def add_book
    print "Title: "
    title = gets.chomp
    print "Publisher: "
    publisher = gets.chomp
    print "Date of publish: "
    date_of_publish = gets.chomp
    print "Cover state: "
    cover_state = gets.chomp
    # print "Label: "
    # label = gets.chomp
    Book.new(title, publisher, date_of_publish, cover_state)
  end

  def add_item
    puts "Please choose one of the below options: 
    1- Add a book
    2- Go back
    "
    answer = gets.chomp.to_i
    unless [1, 2].include?(answer)
      add_item
    end
    if answer == 1
      add_book
    else answer == 2
      options
    end 
  end

end