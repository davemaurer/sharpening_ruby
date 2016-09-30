class Werewolf
  attr_reader :name, :location

  def initialize(name, location='London')
    @name = name
    @location = location
  end
end
