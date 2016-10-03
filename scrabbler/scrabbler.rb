#make a program that takes in a string as input then multiplies
#the number values of the letters (a=1, b=2,etc.) together to get
#a total.

class Scrabbler
  attr_reader :string, :scoring_key

  def initialize(string)
    @string = string
    @scoring_key = ('a'..'z').zip(1..26).to_h
  end

  def chop_up_into_letters
    string.downcase.chars
  end

  def score_word
    chop_up_into_letters.map { |letter| scoring_key[letter] }
  end
end
