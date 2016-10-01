class SieveIt
  attr_reader :n, :numbers

  def initialize(num)
    @n       = num
    @numbers = (2..num).to_a
  end

  def find_primes
    puts numbers - collect_composite_numbers
  end

  def collect_composite_numbers
    composites = []
    numbers.each do |num|
      next_num = num + num
      until next_num > n
        composites << next_num
        next_num = next_num + num
      end
    end
    composites
  end
end

number = ARGV[0].to_i

sieve = SieveIt.new(number)

sieve.find_primes
