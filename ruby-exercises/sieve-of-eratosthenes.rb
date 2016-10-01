class SieveIt
  attr_reader :n, :numbers

  def initialize(num)
    @n     = num
    @numbers = (2..num).to_a
  end

  def eliminate_composite_numbers
    composites = []
    numbers.each do |num|
      next_num = num + num
      until next_num > n
        composites << next_num
        next_num = next_num + num
      end
    end
    return numbers - composites
  end
end

sieve = SieveIt.new(20)
puts sieve.eliminate_composite_numbers
