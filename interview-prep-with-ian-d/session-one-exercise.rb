num_list = [9, 1, -2, 6, 10, -5, -3, -1, -4, 8, 4, 5, 7, 0, 3, 2]

highest = num_list.max
lowest = num_list.min

sum = 0
num_list.each { |a| sum+=a }
average = sum / num_list.count.to_f

puts(highest, lowest, sum, num_list.count, average)

# now calculate max/min/avg only
# iterating over num_list one time

highest = num_list.first
lowest = num_list.last
sum = 0
counter = 0

num_list.each do |num|
  sum += num
  counter += 1
  highest = num if num > highest
  lowest = num if num < lowest
end

average = sum / counter.to_f

puts(highest, lowest, sum, counter, average)
