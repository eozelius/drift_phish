# Chess Class
class Chess
  attr_accessor :board, :white_player, :black_player
  attr_reader :active

  def initialize
    @board = Board.new
    @white_player = Player.new('white')
    @black_player = Player.new('black')
    @active = true
  end

  def print_board
    @board.print_board
  end

  private
  def start_game
  end

  def checkmate?
  end
end