class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name  = name
    @breed = breed
  end

  def shoot
    'Twang!!!'
  end

  def run
    'Clop clop clop clop!!!'
  end
end
