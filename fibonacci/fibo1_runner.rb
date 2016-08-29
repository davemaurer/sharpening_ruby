require_relative 'fibo1'

class FiboRunner
  def self.calculate
    print "How many times would you like the Fibonacci sequence to run? "
    input = gets.chomp.to_i
    fib = Fibo.new(input)
    fib.start
  end
end

FiboRunner.calculate
