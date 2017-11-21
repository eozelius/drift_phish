# Player
class Player
  attr_reader :color

  def initialize(color = 'white')
    @color = color
  end

  def move(board)
    return false unless board.is_a? Array

    pieces = my_pieces(board)
    moves  = my_moves(pieces, board)



    { :prev => [6, 4],
      :goto => [4, 4] }
  end

  def my_pieces(board)
    pieces = []
    (0..7).each do |r|
      (0..7).each do |c|
        unless board[r][c].nil?
          pieces.push board[r][c] if board[r][c].color == @color
        end
      end
    end
    pieces
  end

  def my_moves(pieces, board)
    moves = []




  end
end