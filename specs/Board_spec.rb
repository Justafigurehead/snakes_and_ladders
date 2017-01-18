require('minitest/autorun')
require('minitest/rg')
require_relative('../Dice')
require_relative('../Players')
require_relative('../Board')


  class Test_Board < MiniTest::Test

    def setup
      @board = Board.new()

      @player_one = Players.new("Player One", 0)
      @player_two = Players.new("Player Two", 0)      
    end

    # def test_climb_ladder
    #   @player_one.current_position = 4

    #     climb = @board.check_move(@player_one.current_position)
      
    #     @player_one.current_position = climb
    #   assert_equal(17, climb)
    # end


    def test_check_ladder
      assert_equal(17, @board.check_move(4))
    end

    def test_check_snake
      assert_equal(2, @board.check_move(3))
    end



  end