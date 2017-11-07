require_relative '../../lib/chess'
require_relative '../../lib/piece'
require_relative '../../lib/player'

RSpec.describe Chess do

  describe '#initialize' do
    # Variables
    let(:c) { Chess.new }

    it 'should create a board' do
      expect(c).to respond_to(:board)
    end

    it 'should have white pieces' do
      rook  = c.board[7][0]
      queen = c.board[7][3]
      king  = c.board[7][4]

      expect(rook.type).to  eq('rook')
      expect(rook.color).to eq('white')

      expect(queen.type).to  eq('queen')
      expect(queen.color).to eq('white')

      expect(king.type).to  eq('king')
      expect(king.color).to eq('white')
    end

    it 'should have black pieces' do
      knight = c.board[0][6]
      queen  = c.board[0][3]
      king   = c.board[0][4]
      bishop = c.board[0][2]

      expect(knight.type).to  eq('knight')
      expect(knight.color).to eq('black')

      expect(queen.type).to   eq('queen')
      expect(queen.color).to  eq('black')

      expect(king.type).to    eq('king')
      expect(king.color).to   eq('black')

      expect(bishop.type).to  eq('bishop')
      expect(bishop.color).to eq('black')
    end

    it 'should have empty (0) squares between black & white' do
      empty_squares = [ c.board[5][6], c.board[2][2], c.board[3][5]]

      empty_squares.each do |e|
        expect(e).to eq(0)
      end
    end

    it 'should set the active_player to white' do
      turn = c.active_player.color
      expect(turn).to eq('white')
    end

    it 'should be active if the game is playable' do
      expect(c.active).to eq(true)
    end
  end

  describe '#checkmate?' do
    it 'is true when king cannot move' do
      pending 'needs to be implemented'
      expect(1).to eq(0)
    end
  end
end