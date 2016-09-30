class Werewolf
  attr_reader :name, :location

  def initialize(name, location='London')
    @name = name
    @location = location
    @human = true
  end

  def human?
    @human
  end
end
