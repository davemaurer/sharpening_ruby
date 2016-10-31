# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?


def find_largest_prime_factor
  number = 600851475143
  largest = Math.sqrt(number).to_i
  current = 2
  result = 0
  while current < largest
    if number % current == 0
      result = current
      number = number / result
    else
      current += 1
    end
  end
  puts result
end


find_largest_prime_factor
