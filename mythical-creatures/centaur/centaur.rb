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
    cranky? || laying? ? 'NO!' : 'Twang!!!'
  end

  def run
    @exertion_count += 1
    cranky? || laying? ? 'NO!' : 'Clop clop clop clop!!!'
  end

  def cranky?
    @exertion_count >= 3
  end

  def standing?
    @standing
  end

  def laying?
    !@standing
  end

  def sleep
    'NO!' if standing?
  end

  def lay_down
    @standing = false
  end

  def stand_up
    @standing = true
  end
end
