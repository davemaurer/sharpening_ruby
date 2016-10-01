require_relative 'human'

class Ogre
  attr_reader :name, :home

  def initialize(name, home= 'Swamp')
    @name = name
    @home = home
  end

  def encounter(target)
    target.encounter_counter += 1
  end
end
