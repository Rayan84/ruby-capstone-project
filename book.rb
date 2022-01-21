require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(_title, publisher, _date_of_publish, cover_state)
    puts 'creating a book...'
    super(id, label, publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    if can_be_archived? || cover_state == 'bad'
      true
    else
      false
    end
  end
end
