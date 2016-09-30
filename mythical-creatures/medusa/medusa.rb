require_relative 'person'

class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(target)
    @statues << target
    if @statues.length > 3
      lucky_person = @statues.shift
      lucky_person.unstone
    end
    target.turn_to_stone
  end
end
