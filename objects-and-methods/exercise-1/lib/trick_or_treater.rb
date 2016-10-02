class TrickOrTreater
  attr_accessor :dressed_up_as, :bag

  def initialize(costume)
    @dressed_up_as = costume.style
    @bag = []
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.length
  end

  def eat
    @bag.pop
  end
end
