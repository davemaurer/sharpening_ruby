# Procs and Lambdas are both closures of the class Proc and both can accept arguments

# Reference:
# http://stackoverflow.com/questions/1435743/why-does-explicit-return-make-a-difference-in-a-proc
# https://www.youtube.com/watch?v=frY8JFd1JKM

#LAMBDAS - AKA - ANONYMOUS FUNCTIONS/METHODS (functions and methods are the same thing in Ruby)

# 1 - Lambda example with optional arguments. You MUST use stabby -> and cannot use lambda to declare
my_lambda = -> (a, b) do
 a + b
end

# 2 - Lambda example with arguments passed into the block. You MUST use lambda to declare instead of stabby ->
lamlam = lambda { |a, b| a + b }

#Both of the above examples ^^^ do the exact same thing.

# 3 - Lambdas with no args and alternate declaration
lam = lambda { "this is a lambda" }
lamalot = -> { "this is a stabby lambda and does the same thing as the one above it" }

#You call a lambda using .call - ex:
my_lambda.call(5, 10) #(using the my_lam variable assignment from 1 above) => 15
lamlam.call(5, 10) # Exact same thing as my_lambda
lam.call #(using the lam variable assignment in 3 above) => this is a lambda
lamalot.call # Exact same behavior as lam, printing out the string inside the block

=begin
The reason calling the lambdas that have strings inside the block will return the string, is because
lambdas handle return at the parent level the same way methods do. Where lambdas differ is when you have
a nested conditional (if statement, etc.) or nested function/method. When this happens Ruby will treat the return
statement like a "next" statement, meaning it will not return the value if there is another return anywhere later
in the execution. Again, this is only inside of nested methods/function/conditionals. For example:
=end
def my_lambda_method(a)
  l = -> (a) do
    if a == "Yes"
      "This will not work because of the second return"
    end
  end
  l.call(a)
  return "This is the return that will happen, even though we invoke the lambda by calling it first"
  # Again this is because return inside of nested stuff acts like next, which goes on to the next thing unless
  # there is no next thing.
end

# This code results in:
my_lambda_method("Yes") # => "This is the return that will happen, even though we invoke the lambda by calling it first"



#PROCS - Arguments passed only to the block. Declared differently than Lambdas

# 1 Example with options
my_proc = Proc.new do |a, b|
  a + b
end

# 2 Example with no options
no_arg_proc = Proc.new do
  "This is a proc with no arguments"
end

# Procs are executed with .call, just like lambdas
my_proc.call(3, 4) #(from 1 above) => 7
no_arg_proc #(from 2 above) => This is a proc with no arguments
