# Ruby Blocks are any amount of executable code in between a do(also {) and an end(also }). So:
# Defining a method

def use_my_block
  yield # The yield keyword will execute whatever you put inside of your block
end

# Invoking my method, using a block

use_my_block do
  puts "This is the actual block"   # <- This entire line is the actual block. Not the do, or the end.
end

# The yield keyword can take parameters(another name for arguments). Example:
def say_name(name)
  yield(name)
end

say_name('Bob!') do |name|
  puts name
end

# This will output => This is the actual block
# The block is the same if it is done like this (which is called "inline") - so this is an inline block below:

use_my_block { puts "This is the same" }

# What just happened above is called "passing in a block". We passed our block into the method use_my_block
# The do and end are the: { (open bracket) and: } (closing bracket), and the block is:  puts "This is the same"


# Blocks are the same when using enumerable methods:
# So we can assign an array as a value to a...

a = [1, 2, 3, 4]

# which will become a variable when we invoke it below...

my_new_a = a.map do |each_element|
  each_element + 2
end
p my_new_a   # Gives us => [3, 4, 5, 6]

# A block inside of a method looks like this
def my_thing(given_array, given_number)
  c = given_array.map { |my_elements| my_elements + given_number }
  p c
end
nums = %w(1 2 3 4 5)
my_thing(nums, 5) # Gives us => [6, 7, 8, 9, 10]


# Blocks are not objects, like most everything else in Ruby, BUT, blocks can be transformed into procs that ARE
# objects. To do this we use &block as the last argument passed to a method calling the block. Example:

def call_block(&block)
  puts block
  block.call
end

call_block { "Hello" } # Gives us => Hello.

# You can also use more arguments. Example:

def call_another_block(a, &block)
  puts a + block.call
end

call_another_block("Hi") { " there" }
