class TrickOrTreater
  attr_accessor :dressed_up_as

  def initialize(costume)
    @dressed_up_as = costume.style
  end
end
