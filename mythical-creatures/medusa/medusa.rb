require_relative 'person'

class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name    = name
    @statues = []
  end

  def stare(target)
    @statues << target
    @statues.shift if @statues.length > 3
    @statues.each { |statue| statue.victims = @statues }
  end
end
