class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name  = name
    @rider = rider
    @color = color
    @hungry = {hungry: true, times_eaten: 0}
  end

  def hungry?
    @hungry[0] = true unless full?
  end

  def eat
    @hungry[:times_eaten] += 1
  end

  def full?
    @hungry[:times_eaten] >= 3
  end
end
