# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

max = 600851475143
numbers = (2..max/2)
composites = []

numbers.each do |num|
  current = num * 2
  until current >= max
    composites << current
    current += num
  end
end

primes = numbers - composites.uniq

puts primes.last
