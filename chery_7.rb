class Item
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Item
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "name: #{name}, price: #{price}, running_time: #{running_time}"
  end
end

d = DVD.new('トトロ', 1000, 90)
p d.to_s

i = Item.new('野菜',120)
p i.to_s