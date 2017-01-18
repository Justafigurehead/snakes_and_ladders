require('minitest/autorun')
require('minitest/rg')
require_relative('../Dice')
require_relative('../Players')

  class Test_Players < MiniTest::Test

    def setup
      @player_one = Players.new("Player One", 0)
      @player_two = Players.new("Player Two", 0)

    end

    def test_player_name
      assert_equal("Player One", @player_one.name)
    end
    

    def test_player_can_throw
      assert_equal(3, @player_one.player_throw())
    end

    def test_add_throw

      assert_equal(4, @player_one.add_throw())
    end

    # def test_player_moves
    #   assert_equal(6, @player_one.player_makes_move())
    # end

    # def test_player_hits_special
    #   assert_equal(17, @player_one.)
    # end

    # def test_player_makes_move_with_ladder
    #   assert_equal(17, @player_one.current_position)
    # end
  end