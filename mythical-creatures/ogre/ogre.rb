require_relative 'human'

class Ogre
  attr_reader :name, :home
  attr_accessor :times_swung, :encounter_counter

  def initialize(name, home= 'Swamp')
    @name        = name
    @home        = home
    @times_swung = 0
    @encounter_counter = 0
  end

  def encounter(target)
    @encounter_counter += 1
    target.encounter_counter += 1
    swing_at(target) if target.notices_ogre?
  end

  def swing_at(target)
    @times_swung += 1
    target.knocked_out = true if @times_swung % 2 == 0
  end
end
