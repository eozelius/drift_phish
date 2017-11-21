require_relative '../../lib/chess'
require_relative '../../lib/piece'
require_relative '../../lib/player'

RSpec.describe Chess do
  # Variables
  let(:c) { Chess.new }

  describe '#initialize' do
    describe 'board & pieces at beginning of game' do
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
        empty_squares.each { |e| expect(e).to eq(nil) }
      end
    end

    it 'should set the active_player to white' do
      active_player = c.active_player.color
      expect(active_player).to eq('white')
    end
  end
end