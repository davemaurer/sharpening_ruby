# So we can define a variable that holds two string values, inside of an array.
two_strings = ['String one is at index 0', 'String two is at index 1']

# So. In the above example, we store ONE object, an array, which itself contains multiple values. Those values are also
# objects, which are nested inside of the array. Basically everything in Ruby is an object, except a block, but we'll worry
# about that distinction later. Store it in the background for now.

# And now if we want to access the value 'string_one' we can use the array's index to get it for us:
two_strings[0] # => "String one is at index 0"
# Aaaannnnnd for the second value?
two_strings[1] # => "String two is at index 1"

# Arrays can be used for iteration. Let's use Ruby's built in .each method on an array of numbers.

# Assign an array of numbers as the value of a local variable we will call...numbers.
numbers = [1, 2, 3, 4, 5]

# Iterate over the array and add 1 to each element, OH, and also assign that outcome to a variable, because .each doesn't
# actually return anything (Just let that last part gloss over for now. You will remember it better later.).
numbers_plus_one = numbers.each do |element|
  element = element + 1
end

# Now lets write it a different way. This way does the exact same thing, with different syntax. The differences are:
# 1. Using brackets for the do and end. The open bracket: {, is same as do, and the closing bracket: }, is same as end.
# 2. Changing the name of the iterator from element to number. This can be any name you want it to be, and sometimes you will
#    see it named e, or el, for element.
# 3. Using the += assignment operator. += is a a built-in shorthand method in Ruby. x += 1 is the same as x = x + 1.
# 4. Switch the order of the iterator and the number we want to add to it. Instead of number += 1 we will do 1 += number. It
#    doesn't matter what order they go in.
numbers = [1, 2, 3, 4, 5]
numbers_plus_one = numbers.each { |number| 1 += number }
# Now we call the variable numbers_plus_one, and it gives us our new array:
numbers_plus_one # => [2, 3, 4, 5, 6]

# Ruby, like english has different ways to 'say' the same thing. Think of the above two ways to write use the .each method as
# the words hi, and hello. They both do the same thing, they are just spelled differently.

# Now let's do the same thing, but store the result in a method instead of a new local variable. And let's use an in instance
# variable for numbers so we can define it outside of the method. Like this:

@numbers = [1, 2, 3, 4, 5]
def numbers_plus_one
  @numbers.each { |number| number += 1 }
end

# Now we can call/invoke/execute the method. Notice that calling a method looks the same as calling a variable? Name your stuff
# carefully! Some programmers like to name variables like nouns, and methods like verbs.
numbers_plus_one # => [2, 3, 4, 5, 6]
