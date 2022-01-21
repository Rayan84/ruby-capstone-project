class Label
  def initialize
    @id = Random.rand(1...1000)
    @title = title
    @items = []
    @color = color
  end

  def add_item(item: item)
    @items.push(item)
    item.label = self
  end
end
