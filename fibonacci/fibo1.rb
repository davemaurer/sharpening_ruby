class Fibo
  attr_reader :starting_numbers, :cycles

  def initialize(cycles = 0)
    @starting_numbers = [0,1]
    @cycles = cycles
  end
end
