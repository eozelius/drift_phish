# Pawn Class
class Pawn < Piece
  def initialize(location = [0,0])
    super(args)
    @location = location
  end

  def possible_moves
    [[0,0], [5,5]]
  end

  def best_move
    [4,4]
  end
end