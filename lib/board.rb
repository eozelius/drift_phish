# Board Class
class Board
  attr_reader :board

  def initialize
    @board = reset_board
  end

  def reset_board
    # White pieces
    a_1 = Piece.new('rook',   [0, 0], 'white')
    b_1 = Piece.new('knight', [0, 1], 'white')
    c_1 = Piece.new('bishop', [0, 2], 'white')
    d_1 = Piece.new('queen',  [0, 3], 'white')
    e_1 = Piece.new('king',   [0, 4], 'white')
    f_1 = Piece.new('bishop', [0, 5], 'white')
    g_1 = Piece.new('knight', [0, 6], 'white')
    h_1 = Piece.new('rook',   [0, 7], 'white')

    a_2 = Piece.new('pawn', [1, 0], 'white')
    b_2 = Piece.new('pawn', [1, 1], 'white')
    c_2 = Piece.new('pawn', [1, 2], 'white')
    d_2 = Piece.new('pawn', [1, 3], 'white')
    e_2 = Piece.new('pawn', [1, 4], 'white')
    f_2 = Piece.new('pawn', [1, 5], 'white')
    g_2 = Piece.new('pawn', [1, 6], 'white')
    h_2 = Piece.new('pawn', [1, 7], 'white')

    # Black pieces
    a_8 = Piece.new('rook',   [7, 0], 'black')
    b_8 = Piece.new('knight', [7, 1], 'black')
    c_8 = Piece.new('bishop', [7, 2], 'black')
    d_8 = Piece.new('queen',  [7, 3], 'black')
    e_8 = Piece.new('king',   [7, 4], 'black')
    f_8 = Piece.new('bishop', [7, 5], 'black')
    g_8 = Piece.new('knight', [7, 6], 'black')
    h_8 = Piece.new('rook',   [7, 7], 'black')

    a_7 = Piece.new('pawn', [6, 0], 'black')
    b_7 = Piece.new('pawn', [6, 1], 'black')
    c_7 = Piece.new('pawn', [6, 2], 'black')
    d_7 = Piece.new('pawn', [6, 3], 'black')
    e_7 = Piece.new('pawn', [6, 4], 'black')
    f_7 = Piece.new('pawn', [6, 5], 'black')
    g_7 = Piece.new('pawn', [6, 6], 'black')
    h_7 = Piece.new('pawn', [6, 7], 'black')

    [ [a_8, b_8, c_8, d_8, e_8, f_8, g_8, h_8],
      [a_7, b_7, c_7, d_7, e_7, f_7, g_7, h_7],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [a_2, b_2, c_2, d_2, e_2, f_2, g_2, h_2],
      [a_1, b_1, c_1, d_1, e_1, f_1, g_1, h_1] ]
  end

  def print_board
    (0..7).each do |r|
      print "#{8 - r - 1} "
      (0..7).each do |c|
        if @board[r][c] == 0
          print " nil "
        else
          print " #{@board[r][c].color}-#{@board[r][c].type}  "
        end
      end
      print "\n" if r < 7
    end
    print "\n   A  B  C  D  E  F  G  H \n"
  end
end