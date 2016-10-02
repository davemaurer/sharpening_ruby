class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    count == 0
  end

  def count
    candies.length
  end

  def <<(target)
    candies.push(target)
  end

  def contains?(string)
    candies.map { |candy| candy.type }.include?(string)
  end
end
