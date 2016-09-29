class Pirate
  attr_reader :name, :job

  def initialize(name, job='Scallywag')
    @name = name
    @job = job
    @heinous_act = 0
  end

  def cursed?
    @heinous_act >= 3
  end

  def commit_heinous_act
    @heinous_act += 1
  end
end
