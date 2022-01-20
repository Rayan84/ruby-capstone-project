class Item
  def initialize
    @id = Random.rand(1...1000)
    @genre = Genre
    @author = Author
    @source = Source
    @label = Label
    @publish_date = date
    @archived = false
  end
end
