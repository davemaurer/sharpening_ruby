=begin
When I said there were two types of variable, with a third not to worry about yet, I was referring to 'class variables'.
You make them like this: @@my_class_variable
Class variables are lesser used, and they have to do with how class inheritance in Ruby works. Basically, if you have
classes inheriting from other classes, but you DON'T want certain variables to be inherited by child classes, you use
class variables. It's like scoping those variables to the parent class only.
=end
