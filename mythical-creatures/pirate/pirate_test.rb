gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pirate'

class PirateTest < Minitest::Test
  def test_has_name
    pirate = Pirate.new("Jack")
    assert_equal "Jack", pirate.name
  end

  def test_can_have_different_name
    pirate = Pirate.new("Blackbeard")
    assert_equal "Blackbeard", pirate.name
  end

  def test_is_a_scallywag_by_default
    pirate = Pirate.new("Jack")
    assert_equal 'Scallywag', pirate.job
  end

  def test_is_not_always_a_scallywag
    pirate = Pirate.new("Jack", "Cook")
    assert_equal "Cook", pirate.job
  end

  def test_isnt_cursed_by_default
    pirate = Pirate.new("Jack")
    refute pirate.cursed?
  end

  def test_becomes_cursed_after_enough_heinous_acts
    pirate = Pirate.new("Jack")
    refute pirate.cursed?
    pirate.commit_heinous_act
    refute pirate.cursed?
    pirate.commit_heinous_act
    refute pirate.cursed?
    pirate.commit_heinous_act
    assert pirate.cursed?
  end

  def test_a_pirate_can_rob_ships
    # create a pirate
    black_beard = Pirate.new("Black Beard")
    # check that a pirate has a rob_ship method
    assert black_beard.rob_ship
  end

  def test_a_pirate_has_booty
    # create a pirate
    broke_guy = Pirate.new("Broke Guy")
    # pirate starts with 0 booty
    assert_equal 0, broke_guy.booty

  end

  def test_a_pirate_gets_100_booty_for_robbing_a_ship
    # create a pirate
    richy = Pirate.new("Richy")
    # pirate robs ship
    richy.rob_ship
    # check pirate has 100 booty
    assert_equal 100, richy.booty
  end

end
