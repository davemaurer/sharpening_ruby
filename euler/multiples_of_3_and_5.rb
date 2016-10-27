# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
require 'benchmark'

iterations = 100000

Benchmark.bm do |bm|
  bm.report do
    iterations.times do
      (1..1000).to_a.reduce(0) { |sum, num| (num % 3 == 0 || num % 5 == 0) ? sum + num : sum }
    end
  end
  bm.report do
    iterations.times do
      multiples = []
      (1..1000).each { |number| multiples << number if number % 3 == 0 || number % 5 == 0 }
      multiples.reduce(:+)
    end
  end
end

