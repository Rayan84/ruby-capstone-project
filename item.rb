require 'date'

class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :archived
  attr_reader :id
  def initialize(genre, author, source, label, archived = false)
    @id = Random.rand(1...1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date
    @archived
  end

  # one to many should not be set in constructor, instead they should have dependent setter methods

  def can_be_archived?(item)
    Date.today -Date.parse(item.publish_date) >= (4018/1)
  end

  def move_to_archived(item)
    return item.archived = true if can_be_archived?(item)
  end
end
