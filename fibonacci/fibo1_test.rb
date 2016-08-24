require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'fibo1'

class FiboTest < Minitest::Test
  attr_reader :fibo

  def setup
    @fibo = Fibo.new
  end

  def test_it_starts_with_an_array_of_0_and_1
    assert_equal Array, fibo.starting_numbers.class
    assert_equal [0, 1], fibo.starting_numbers
  end

  def test_it_will_take_in_a_number_of_times_to_cycle
    fibo1 = Fibo.new(5)
    assert_equal 5, fibo1.cycles
  end
end
