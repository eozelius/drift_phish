# Chess Piece
class Piece
  attr_reader :type, :location, :possible_moves, :best_move

  def initialize(type = 'pawn', location = [0,0])
    @type = type
    @location = location
  end

  def possible_moves
    [[0,0], [5,5]]
  end

  def best_move
    [4,4]
  end
end