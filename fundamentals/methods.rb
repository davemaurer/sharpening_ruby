# NOTE: When you see =>, it stands for equals, or 'this will output'. It's a way of using the equals sign without confusing
# it with the ruby assignment operator.

# Methods, like variables, represent a value, but they do so by altering other methods or variables, then returning
# the result of those alterations. When thinking of methods as a whole, keep it simple and remember that they just
# return a value, like variables do. For example:

# example 1
def make_dog_bark
  dog = 'Killer'
  return dog + ' says raaawwwwrr!'
end

=begin
 The word return above is not required, because methods always return the last line executed before their end statements.
 Ruby does this behind the scenes for us. Some developers include the return anyway to be more clear and readable in their
 code. This is a stylistic choice only, and won't affect how the code is run. The only thing to say here, is if you use return,
 always use it. Be consistent. So with that in mind, this example below works just like the code above does:
=end

# example 2
def make_dog_bark
  dog = 'Killer'
  dog + ' says raawwwwrr!'
end

# Then when we invoke/call/execute this method:

make_dog_bark # => Killer says raawwwrr!

# In both of the above examples, a variable dog is defined inside the method itself, which is a little pointless because we
# could have just done this:

make_dog_bark = 'Killer says raawwwrr!' # => Killer says raawwwrr!

# So the reason methods exist at all, is because they not only can execute and return code, but they also accept arguments,
# and this is probably the most important thing to remember about methods. They are portable, argument taking, code execution
# containers. So the big difference between variables and methods, is that methods take arguments.

# example 3
def make_dog_bark(dog_that_is_the_argument_being_passed_in)
  dog_that_is_the_argument_being_passed_in + ' rawwwrr!'
end

# Now, we can do this when executing/calling/invoking the method above:

make_dog_bark('Killer') # => Killer says rawwwrr!

# Because we now have a method that accepts a lot of things as an argument, we can change the name by changing what we pass in as
# the argument. Passing in is just a fancy way to say 'giving the method something to use'. So now we can do:

make_dog_bark('Fluffy') # => Fluffy says raawwwrr!

# The arguments you pass to methods don't have to be just basic values (like the string 'Killer'). They can also be variables, or
# other methods, or even classes. For example:

dog = 'Killer' # Here we assign the value 'Killer', to a variable definition, dog.

# Then we can use the method we created up above in example 3, but we are passing in a variable instead of a string.

make_dog_bark(dog)

# Or we can pass a ruby class in as the argument. Se we COULD do:

# example 4
class Dog
  def dog(name_for_dog)
    name_for_dog # Remember, we can put return at the beginning if we want, but it's not required because ruby does it for us.
  end
end

# NOTE: Not having to use return to get the last value resolved in a method is something Ruby uses, called implicit return.
# This works great MOST of the time. Be careful with .each and some enumerables. Learn which don't actually give you back
# a value. Those you will have to use return on.

make_dog_bark(Dog.new('Killer')) # => Killer says raawwwrr!

# And this next example is the exact same thing as example 4. It just uses better coding style, first assigning the new
# class instance of Dog to a variable named killer, then passing the variable killer to the make_dog_bark method:

killer = Dog.new('Killer')

make_dog_bark(killer)

# We are still passing in a class, but this time it's just represented by the variable, killer, which we assigned the value of
# the class instance to. (An instance of a class is just a short way of saying 'this class object I created using the .new method')
# NOTE: Don't confuse an instance of a class with an instance variable. They are not exactly the same concept. Programmers make
# terms up just like scientists do (Newton's Law) to explain concepts, and they don't always directly correlate. Learn what a
# class instance is, and what an instance variable is, and know the difference. Both concepts are covered in this guide.
