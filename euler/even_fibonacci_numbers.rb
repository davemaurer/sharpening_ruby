# Each new term in the Fibonacci sequence is generated by adding the previous two terms.By starting with 1 and 2, the
# first 10 terms will be:
#   1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the
# even-valued terms.
require 'benchmark'

Benchmark.bm do |bm|
  bm.report do
  end
  def even_fib
    start = [1, 2]
    until start.last >= 4_000_000
      start << start[-1] + start[-2]
    end
    start.reduce(0) do |sum, num|
      if num.even?
        sum + num
      else
        sum
      end
    end
  end
end
