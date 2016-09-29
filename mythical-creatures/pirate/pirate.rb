class Pirate
  attr_reader :name, :job

  def initialize(name, job='Scallywag')
    @name = name
    @job = job
  end

  def cursed?
    false
  end
end
