require_relative '../../lib/piece'

RSpec.describe Piece do
  let(:pawn) { Piece.new('pawn', [6, 0], 'white') }
  let(:rook) { Piece.new('rook', [0, 0], 'black') }
  let(:bishop) { Piece.new('bishop', [0, 5], 'black') }
  let(:knight) { Piece.new('knight', [6, 6], 'white') }
  let(:queen)  { Piece.new('queen',  [7, 3], 'white') }
  let(:king)   { Piece.new('king',   [0, 4], 'black') }

  describe 'pawn' do
    it 'can move forward one square' do
      expect(pawn.possible_moves).to contain_exactly([-1, 0])
    end
  end

  describe 'rook' do
    it 'can move in a straight line (forward/backward side/side)' do
      expect(rook.possible_moves).to contain_exactly([-1, 0], [0, 1], [1, 0], [0, -1])
    end
  end

  describe 'bishop' do
    it 'can move in any diagonal direction' do
      expect(bishop.possible_moves).to contain_exactly([-1, -1], [-1, 1], [1, 1], [1, -1])
    end
  end

  describe 'knight' do
    it 'can move any direction 2x1 squares' do
      expect(knight.possible_moves).to contain_exactly([-2,-1], [-2, 1], [-1, 2], [1,  2], [2,  1], [2, -1], [1, -2], [-1,-2])
    end
  end

  describe 'queen' do
    it 'can move any direction' do
      expect(queen.possible_moves).to contain_exactly([-1, 0], [-1, 1], [0,  1], [1,  1], [1,  0], [1, -1], [0, -1], [-1,-1])
    end
  end

  describe 'king' do
    it 'can move any direction' do
      expect(king.possible_moves).to contain_exactly([-1, 0], [-1, 1], [0,  1], [1,  1], [1,  0], [1, -1], [0, -1], [-1,-1])
    end
  end
end