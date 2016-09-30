require_relative 'person'

class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(target)
    @statues << target
    target.turn_to_stone
  end
end
