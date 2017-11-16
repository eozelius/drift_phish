# Chess Class
class Chess
  attr_reader :board, :white_player, :black_player, :active_player

  def initialize
    @board = reset_board
    @white_player = Player.new('white')
    @black_player = Player.new('black')
    @active_player = @white_player
  end

  def print_board
    (0..7).each do |r|
      print "#{8 - r - 1} "
      (0..7).each do |c|
        if @board[r][c].nil?
          print "[______]"
        else
          color = @board[r][c].color == 'white' ? 'W' : 'B'
          print "[#{color}-#{@board[r][c].type[0]}#{@board[r][c].type[1]}#{@board[r][c].type[2]}#{@board[r][c].type[3]}]"
        end
      end
      print "\n" if r < 7
    end
    print "\n     A       B       C       D       E       F       G       H \n"
  end

  private

  def start_game
    p ' ########## Begin new Game ########## '

=begin
    while game_active?
      move = @active_player.make_move(@board)

      old_row = move[:old][0]
      old_col = move[:old][1]

      piece_to_move = @board[old_row][old_col]
      p "piece to move: #{@board[old_row][old_col]}"

      new_row = move[:new][0]
      new_col = move[:new][1]

      p "old_row: #{old_row}"
      p "old_col: #{old_col}"

      p "piece: #{piece_to_move}"

      p "new_row: #{new_row}"
      p "new_col: #{new_col}"


      @board[new_row][new_col] = piece_to_move
      @board[old_row][old_col] = nil
      print_board

      toggle_active_player

    end
=end
  end

  def move_piece(move)
  end

  def toggle_active_player
    if @active_player == @white_player
      @active_player = @black_player
    else
      @active_player = @white_player
    end
  end

  def game_active?
    @active_player.checkmated? ? false : true
  end

  def reset_board
    # White pieces
    a_1 = Piece.new('rook',   'white')
    b_1 = Piece.new('knight', 'white')
    c_1 = Piece.new('bishop', 'white')
    d_1 = Piece.new('queen',  'white')
    e_1 = Piece.new('king',   'white')
    f_1 = Piece.new('bishop', 'white')
    g_1 = Piece.new('knight', 'white')
    h_1 = Piece.new('rook',   'white')

    a_2 = Piece.new('pawn', 'white')
    b_2 = Piece.new('pawn', 'white')
    c_2 = Piece.new('pawn', 'white')
    d_2 = Piece.new('pawn', 'white')
    e_2 = Piece.new('pawn', 'white')
    f_2 = Piece.new('pawn', 'white')
    g_2 = Piece.new('pawn', 'white')
    h_2 = Piece.new('pawn', 'white')

    # Black pieces
    a_8 = Piece.new('rook',   'black')
    b_8 = Piece.new('knight', 'black')
    c_8 = Piece.new('bishop', 'black')
    d_8 = Piece.new('queen',  'black')
    e_8 = Piece.new('king',   'black')
    f_8 = Piece.new('bishop', 'black')
    g_8 = Piece.new('knight', 'black')
    h_8 = Piece.new('rook',   'black')

    a_7 = Piece.new('pawn',   'black')
    b_7 = Piece.new('pawn',   'black')
    c_7 = Piece.new('pawn',   'black')
    d_7 = Piece.new('pawn',   'black')
    e_7 = Piece.new('pawn',   'black')
    f_7 = Piece.new('pawn',   'black')
    g_7 = Piece.new('pawn',   'black')
    h_7 = Piece.new('pawn',   'black')

    [ [a_8, b_8, c_8, d_8, e_8, f_8, g_8, h_8],
      [a_7, b_7, c_7, d_7, e_7, f_7, g_7, h_7],
      [nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil],
      [a_2, b_2, c_2, d_2, e_2, f_2, g_2, h_2],
      [a_1, b_1, c_1, d_1, e_1, f_1, g_1, h_1] ]
  end
end