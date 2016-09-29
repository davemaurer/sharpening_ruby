class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @cast_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(words)
    'sudo ' + words
  end

  def rested?
    @cast_count < 3
  end

  def cast
    @cast_count += 1
    'MAGIC MISSILE!'
  end
end
