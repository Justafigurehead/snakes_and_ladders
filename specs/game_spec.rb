require('minitest/autorun')
require('minitest/rg')
require_relative('../Dice')
require_relative('../Players')
require_relative('../Board')
require_relative('../game')


  class Test_game < MiniTest::Test

    def setup

      @player_one = Players.new("Player One", 0)
      @player_two = Players.new("Player Two", 0)
      @game_1 = Game.new([@player_one, @player_two])

    end

    def test_get_player_names
      assert_equal("Player One", @game_1.players[0].name)
    end

    def test_play_one_round
      @game.play(@game.players)
    end

end