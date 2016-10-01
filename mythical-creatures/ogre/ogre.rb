class Ogre
  attr_reader :name, :home

  def initialize(name, home= 'Swamp')
    @name = name
    @home = home
  end
end
