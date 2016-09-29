class Fibo
  attr_reader :starting_numbers, :cycles

  def initialize(cycles = 0)
    @starting_numbers = [0,1]
    @cycles = cycles
  end

  def start
    while starting_numbers.size - 1 <= cycles do
      starting_numbers << starting_numbers[-1] + starting_numbers[-2]
    end
    print starting_numbers.last
  end
end
