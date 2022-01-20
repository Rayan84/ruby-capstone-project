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

  # one to many should not be set in constructor, instead they should have dependent setter methods

  def can_be_archived?(item)
    if item.publish_date > 10
      return true
    else
      return false
    end
  end

  def move_to_archived(item)
    return item.archived = true if can_be_archived?(item)
  end
end
