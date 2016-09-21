# Procs and Lambdas are both closures of the class Proc

#LAMBDAS - AKA - ANONYMOUS FUNCTIONS/METHODS (functions and methods are the same thing in Ruby)
#Lambda example with optional arguments
my_lambda = -> (a, b) do
 a + b
end

#Lambda with no args and alternate declaration
lam = lambda { "this is a lambda" }

#You call a lambda using .call - ex:
my_lambda.call(5, 10) # => 15
lam.call # => this is a lambda



