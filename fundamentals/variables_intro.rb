=begin
  Variables hold values, and can represent classes, methods, numbers, strings, collections, etc.
  The purpose of variables is store a value, so that you can retrieve it later, potentially in multiple places.
  Because Ruby is a dynamically typed language, the value of variables can be changed. Be aware of this, and how
  it affects your code.

 NOTES:
  1. Whenever you see =>, that means 'evaluates to', or 'gives us'. It's a way of saying equals without confusing it with
     the equals assignment operator in code.

  2. Call/invoke/execute: These are terms created by mad computer scientists, not handed down as laws of physics. So they
     are open to interpretation. When dealing with Ruby, the conventional meanings are: Calling and invoking are the same
     thing when dealing with variables. It just means 'give me the value'. When dealing with methods or other things that
     can execute code, you can say call, invoke, or execute. You COULD say execute when talking about variables if you
     wanted, but variables don't really execute anything, they just return the value they reference.

  3. Define/declare: In Ruby, these two mean the same thing basically. When you create something, like a variable, or a
     method (def is short for define by the way), or a class, etc., you are said to be defining, or declaring it. Then
     when you go to use the thing you created, that's when the call/invoke/execute stuff comes in.

  4. There are two MAIN types of variable in Ruby. Local variables, and instance variables. The way they sound is the way they
     act, meaning a local variable is ONLY accessible within it's 'local scope', while and instance variable is accessible
     anywhere within the scope of the instance it is defined in. It's easy to tell local from instance. Just look for the
     @ in the front. The variable x is a local variable. The variable @x is an instance variable, assuming they each were
     defined already. Ruby has two other variable types called global variables and class variables. Don't worry about those
     for now. Seriously. You can write code fine without ever having to worry about those two, and there is plenty of time
     to learn about them once your comfortable with local and instance variables.

  5. A variable is not actually the value you assign it, it is a reference to the value that is stored in memory. When you
     invoke/call a variable, Ruby will go find the value attached to the variable and give it to you. Not crucial to
     learning how to use the Ruby language at first, but something to keep in mind for later when you want a deeper
     understanding. If you want to keep it in mind now, just remember every time I say things like 'we now assign that
     value to a variable', what I'm really saying is, we now assign that value to a variable reference, which is stored
     in local memory for us. It will not hurt you at all though to just think of a variable as the value you assign to it.
     Plenty of time for computer theory stuff later.

  6. Naming. When variables are called in code, they look just like methods called in code, so many programmers name
     things carefully. This is a good habit to form. How you do it is a stylistic choice. Some like to use noun-likes for
     variables, and verb-likes for methods. i.e cat for a variable, say_cat_name for a method. If you said cat_name as the
     method, that would be potentially confusing to someone reading your code.
=end

# So let's say we want a local variable. Can we just do this?

a

# a above by itself is not a local variable, and if you try to call/invoke it you will get an undefined error. BUT. We can do this:

a = 'something'

# What we just did is a variable assignment, or declaration, or definition. All of those mean the same thing, which is take a thing (in this
# case a string value) and give it a name so you can use that thing later. Now, when the variable is called/invoked, it gives you it's value:

a # => "something"

# Variables can hold pretty much any object as a value. For example we can assign a method to a variable which will give us the value the
# method resolves to(resolves to is another way to say it's return value).

# Define a method, print_hello, who's return value is the string 'hello'.
def print_hello
  'hello'
end

# Assign the value of the method print_hello to the local variable b.
b = print_hello

# Remember that the local variable b now stores the VALUE that print_hello resolves to, not the method itself, so calling b, gives us the return
# value of the print_hello method:

# Call/invoke the local variable b.
b # => "hello"

# As we said above, a variable's value can be almost any object, including a class. So if you had a class like this one, Dog:

class Dog
  def bark
    'Arf!'
  end
end

# Then you can assign an instance of the class Dog to a local variable, which you decide to name fido.
fido = Dog.new
# Then you can call that local variable and use the bark method that is now inside of it.
fido.bark # => "Arf!"

# The variable fido now references (holds the value of) a new instance of the class Dog, and we can go one step further
# by assigning the new class Dog's bark method to a variable, like this...

# Assign a new class instance to a local variable, and we decide to call it rex.
rex = Dog.new
# Assign the result of calling .bark on our local variable rex, to another local variable we will call rex_bark.
# (Don't go crossed-eyed)
rex_bark = rex.bark
# Call/invoke the local variable rex_bark
rex_bark # => "Arf!"

=begin
***** Exercise *****
open your terminal and start up irb/pry whatever you use to write code in your terminal.
declare a local variable named x, and assign a string as the value. Any string you want.
call the variable.
Now do that again, but tell yourself, out loud, what you are doing as you are doing it. Look below for the things you
should be saying.

1. As you type x, you should be saying, I'm typing the letter x, because that's all it is right now.
2. As you type the equals sign, you should be saying, I'm typing the 'equals' assignment operator in preparation for my value.
3. As you type the string, you should be saying, I'm assigning the string value (say the string name), to variable x. I
   have now made a variable assignment.

Ok now do that again at least five times. Use a number, a boolean, nil, and whatever else you want. This is no joke. It
takes repetition and exposure for this stuff to sink in. It's like push ups. You don't think as you are doing each push
up, oh boy I'm really making progress, but put 10000 push ups together and you are probably pretty in shape, or at least
your chest is. These are your push ups. So do five, or ten if you want.
=end

# Variables can also be designated as 'instance variables' when they are defined/created/declared (these all mean the same
# thing). You do this by starting the variable out with the @ symbol. That's it. Now it's an instance variable instead
# of a local variable. For example:

# example 1
@name = 'Bob'

# What that does is make that variable available to any instance of the object it was created in. (Wat!!) If that's
# confusing don't worry, it just takes exposure to see the pattern. For now, let's say that every class and method you
# create in Ruby will have it's own scope, and the variables available in that scope will be determined by where they
# were created, and what kind of variables they are.

# Let's make a variable, defined/declared in the global scope, meaning it is inside the top level object in Ruby, called
# Main, but not inside of any other object (class, method, etc.)
dog_name = 'Killer'

# And then let's make a method that we want to use the variable dog_name in, but we are lazy and don't want to pass it in.

def say_dog_name
  dog_name # Remember, ruby will execute this as return dog_name implicitly for you.
end

# Then let's call/invoke/execute the method say_dog_name
say_dog_name # => NameError: undefined local variable or method `dog_name' for main:Object

# Huh? What are you telling me Ruby? I gave you a variable!!! Well we gave the global object a variable, and in the scope of
# the global object, dog_name has a value. BUT, it is a local variable, and so it only 'exists' in the local scope where it
# was made, the global object. in the scope of the method say_dog_name, the variable dog_name does not exist.
# So what's a developer to do? We could just pass it in to our method right?
dog_name = 'Killer'

def say_dog_name(name)
  name
end

say_dog_name(dog_name) # => 'Killer'

# If we were using a class, we could use an instance variable when we 'initialize' it. Meaning we use the initialize method
# to declare instance variables that will then be available to other methods in the class. Like this:

class Dog
  def initialize
    @name = 'Killer'
  end

  def growl
    @name + ' says grrrrrr!'
  end

  def speak
    @name + ' says ruff!'
  end
end

# example 2: We can define a method with an instance variable inside of it.
def dog_name
  @name = 'Killer'
end

# And now we will make another method that will try to use our instance variable, @name.
def say_dog_name
  @name
end

say_dog_name # => nil

# Wat! The reason this doesn't work is because @name was defined inside of the method dog_name. So it's only available
# inside of the SCOPE of the method dog_name, any scope further down (any 'inner' scope). All 'outer' scopes can't see
# that variable. Buuuuuuuut since objects can carry their scope around with them (this is called closure, and will be
# covered later), we can get at that variable by using the value of the method instead of trying to use the value of the
# instance variable inside of it. Let's do that.

# We will define a method named say_dog_name and inside of it, we will call the method dog_name that resolves to the value,
# 'Killer'. This gives us access to the @name variable inside of dog_name.

# The same thing would happen even if we put both of the above methods inside of a class named Dog, and then used an
# initialize method for the class, with an instance variable @name. Instance variables differ from local variables in that
# they are attached to an object, not a scope, so they can be taken with an object (Like a class or a method) wherever
# that object goes.


# Now we assign a new instance of Dog to a variable we name dog, and invoke the methods we made on it.
dog = Dog.new
dog.growl # => "Killer says grrrrrr!"
dog.speak # => "Killer says ruff!"

# Now both of the methods in the Dog class can access the variable @name, and that's primarily the use for instance variables,
# so they can be passed around inside of the object they live in. Any new methods you make will also have @name to use.

# Ok how did that work? First, the scope of a variable is restricted by where it is declared, and what type of variable
# it is. So the object dog_name, which happens to be a method, has access to the variable @name, because @name is inside of it. So, wherever we call the method
# dog_name, we have access to the value of @name. Just think of every object that has variables inside as a container, and
# when you call that object, you now access to what it carries inside. Let's make a real world comparison:

=begin
***** Exercise *****

Open your REPL again. (Whatever you use to write code in your terminal (irb, etc.) is called a REPL.)
Assign a number value (you pick) to a LOCAL variable named y.
define a method named number_doubler, and let that method accept a PARAMETER, named number, then times that
parameter by itself inside the method.
call the number_doubler method, PASSING IN the variable y as the ARGUMENT.
=end

# So can variables hold more than one value at a time? YES! They can. Kind of. But they have to use collections to do it.
# Collections are usually Array objects [1, 2, 3] or Hash objects {one: 1, two: 2, three: 3}. So technically the variable
# still only holds one value, but that value itself, holds more nested values.

# Two examples of variables that store multiple values by using collection objects.

# Assign an array object to the variable two_strings.
two_strings = ['String one is at index 0', 'String two is at index 1']

# Assign a hash object to the variable number_hash.
number_hash = {one: 1, two: 2, three: 3}


