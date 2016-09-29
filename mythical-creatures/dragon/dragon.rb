class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name  = name
    @rider = rider
    @color = color
    @hungry = true
  end

  def hungry?
    @hungry
  end
end
