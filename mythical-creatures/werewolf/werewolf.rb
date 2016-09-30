class Werewolf
  attr_reader :name, :location

  def initialize(name, location='London')
    @name = name
    @location = location
    @human = true
    @tummy = []
  end

  def human?
    @human
  end

  def change!
    @human ? @human = false : @human = true
  end

  def wolf?
    !@human
  end

  def hungry?
    wolf? && @tummy.empty?
  end

  def eat_someone(victim)
    @tummy << victim if wolf?
  end
end
