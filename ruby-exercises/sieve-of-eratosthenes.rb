class SieveIt
  attr_reader :n, :numbers

  def initialize(num = ARGV[0].to_i)
    @n       = num
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
    puts numbers - composites
  end
end

sieve = SieveIt.new

sieve.eliminate_composite_numbers
