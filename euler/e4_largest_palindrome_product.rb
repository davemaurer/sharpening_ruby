# A palindromic number reads the same both ways.The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


def find_dromes
  max = 99*99
  min = 10*10
  dromes = []
  (min..max).each do |num|
    dromes << num if  num.to_s == num.to_s.reverse
  end
  puts dromes.last
end

find_dromes
