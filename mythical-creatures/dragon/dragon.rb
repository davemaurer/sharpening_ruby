class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name   = name
    @rider  = rider
    @color  = color
    @hungry = 0
  end

  def hungry?
    @hungry < 3
  end

  def eat
    @hungry += 1
  end
end
