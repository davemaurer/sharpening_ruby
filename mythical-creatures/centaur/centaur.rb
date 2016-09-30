class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name           = name
    @breed          = breed
    @cranky         = false
    @standing       = true
    @exertion_count = 0
  end

  def shoot
    @exertion_count += 1
    'Twang!!!'
  end

  def run
    @exertion_count += 1
    'Clop clop clop clop!!!'
  end

  def cranky?
    @exertion_count >= 3
  end

  def standing?
    @standing
  end
end
