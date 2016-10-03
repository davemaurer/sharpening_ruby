class LevenDistanceFinder
  attr_reader :string_a, :string_b

  def initialize(string_a, string_b)
    @string_a = string_a
    @string_b = string_b
    @counter  = 0
  end

  def find_distance
    equalize_input
  end

  def equalize_input
    if string_a.length != string_b.length
      string_pair = [string_a, string_b]
      letters_a = string_pair.max_by(&:length).chars
      letters_b = string_pair.min_by(&:length).chars
    else
      letters_a, letters_b = string_a.chars, string_b.chars
    end
    letters_a.each_with_index do |_, index|
      @counter += 1 unless letters_a[index] == letters_b[index]
    end
    @counter
  end
end
