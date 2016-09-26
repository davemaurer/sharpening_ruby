# Methods, like variables, represent a value, but they do so by altering othe methods or variables, then returning
# the result of those alterations. For example:


def make_dog_bark
  dog = 'Killer'
  return dog + ' says raaawwwwrr!'
end

# The word return above is not required, because methods always return the last line executed before their end statements.
# So this works just like the code above does:

def make_dog_bark
  dog = 'killer'
  dog + ' says raawwwwrr!'
end

make_dog_bark # => killer says raawwwrr!

# In both of the above examples, a variable dog is defined inside the method itself, which is a little pointless because we
# could have just done this:

make_dog_bark = 'killer says raawwwrr!'

# So the reason methods exist at all, is because they not only can execute and return code, but they also accept arguments,
# and this is probably the most important thing to remember about methods. They are portable, argument taking, code execution
# containers. So the big difference between variables and methods, is that methods take arguments.

def make_dog_bark(dog_that_is_the_argument_being_passed_in)
  dog_that_is_the_argument_being_passed_in + ' rawwwrr!'
end

# Now, we can do this when executing/calling/invoking the method above:

make_dog_bark('killer') # => killer says rawwwrr!


