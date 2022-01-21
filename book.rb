class Book < Item
  def initialize
    super(id, genre, author, publish_date, source, label, publish_date, archived)
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
