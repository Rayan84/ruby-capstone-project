class App
  attr_accessor :books, :authors, :labels

  def initialize
    puts 'session just created...'
    @books = []
    @authors = []
    @labels = []
  end
end
