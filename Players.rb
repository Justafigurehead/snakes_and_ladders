require_relative("./Dice")

class Players

attr_reader :name
attr_accessor :current_position

  def initialize(name, current_position)
    @name = name
    @current_position = current_position
    @dice = Dice.new()
  end

def player_throw()
  return @dice.throw()
end

def add_throw()
 throw = @dice.throw()
  @current_position += throw
end


end