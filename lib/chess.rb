# Chess Class
class Chess
  attr_accessor :board, :white_player, :black_player
  attr_reader :active

  def initialize
    @board = reset_board
    @white_player = Player.new
    @black_player = Player.new
    @active = true
  end

  private
  def start_game
  end

  def checkmate?
  end

  def reset_board
    [ [],
      [],
      [],
      [],
      [],
      [],
      [],
      [],]
  end
end