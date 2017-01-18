require_relative('./Players')
require_relative('./Dice')

class Board

  def initialize()

    @dice = Dice.new()
    @player = Players.new("Player One", 0)
    @squares = { 4 => 17, 3 => 2}
  end



  def check_move(move)
    for key in @squares.keys.sort
      if move == key
       return @player.current_position = @squares[key]
      end
    end
    # @squares.keys.sort.each do |key|
    #   puts key
    #   if move == key
    #     @player.current_position = @squares[key]
    #   end
    # end
  end

end