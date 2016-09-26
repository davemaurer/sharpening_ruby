=begin
  Variables hold values, and can represent classes, methods, numbers, strings, collections, etc.
  The purpose of variables is store a value, so that you can retrieve it later, potentially in multiple places.
  Because Ruby is a dynamically typed language, the value of variables can be changed. Be aware of this, and how
  it affects your code.
=end

a

# This by itself is not a variable, and if you try to call/invoke it you will get an undefined error.

a = 'something'

# This is a variable assignment, or declaration, or definition. All of those mean the same thing, which is take a thing (value)
# and give it a name so you can use that thing later. When the variable is called/invoked, it gives you it's value.

a # => 'something'

# The letter a will now give you the string 'something' if you try to call/invoke it.

def print_hello
  'hello'
end

b = print_hello

# the method print_hello is now assigned to the variable b. Remember that the variable b now stores
# the VALUE that print_hello resolves to, not the method itself, so calling b, like below...

b # => 'hello'


# Things to note: A variable is not the value you assign it, it is a reference to the value that is stored in memory. When you
# invoke a variable the ruby 'engine' will go find the value attached to the variable and give it to you.

# A variable's value can be a class. If you had a class:

class Dog
  def bark
    'Arf!'
  end
end

fido = Dog.new
fido.bark # => 'Arf!'

# The variable fido now references (holds the value of) a new instance of the class Dog, and we can go one step further,
# by assigning the new class Dog's bark method to a variable, like this...

rex = Dog.new
rex_bark = rex.bark
rex_bark # => 'Arf!'


