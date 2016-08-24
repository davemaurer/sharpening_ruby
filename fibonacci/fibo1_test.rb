require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'fibo1'

class FiboTest < Minitest::Test
  def test_it_exists
    assert Fibo.new
  end
end
