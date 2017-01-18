require('minitest/autorun')
require('minitest/rg')
require_relative('../Dice')

class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new()
  end


  def test_get_throw_number
    assert_equal(4, @dice.throw())
  end


end