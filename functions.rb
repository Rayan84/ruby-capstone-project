require_relative 'book'
require_relative 'item'
module Functions

  def list_all_books(session)
    puts "listing all books..."
  end

  def list_all_labels
    puts "listing all labels..."
  end

  def list_all_authors
    puts "listing all authors..."
  end

  def add_book(session)
    puts session.books.class 
      
    
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
    session.books.push(Book.new(title, publisher, date_of_publish, cover_state))
    puts session.books
  end

  def add_item(session)
    puts "Please choose one of the below options: 
    1- Add a book
    2- Go back
    "
    answer = gets.chomp.to_i
    unless [1, 2].include?(answer)
      add_item
    end
    if answer == 1
      add_book(session)
    else answer == 2
      options
    end 
  end

end