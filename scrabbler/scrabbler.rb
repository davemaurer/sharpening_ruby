#make a program that takes in a string as input then multiplies
#the number values of the letters (a=1, b=2,etc.) together to get
#a total.

class Scrabbler
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def chop_up_into_letters
    string.downcase.chars
  end
end
