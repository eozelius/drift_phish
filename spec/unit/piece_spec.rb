require_relative '../../lib/piece'

RSpec.describe Piece do
  let(:pawn) { Piece.new('pawn', 'white') }
  let(:rook) { Piece.new('rook', 'black') }
  let(:bishop) { Piece.new('bishop', 'black') }
  let(:knight) { Piece.new('knight', 'white') }
  let(:queen)  { Piece.new('queen',  'white') }
  let(:king)   { Piece.new('king',   'black') }

  directions = {
    north:      [-1, 0],
    north_east: [-1, 1],
    east:       [0,  1],
    south_east: [1,  1],
    south:      [1,  0],
    south_west: [1, -1],
    west:       [0, -1],
    north_west: [-1,-1],
  }

  describe 'pawn' do
    it 'can move forward one square' do
      expect(pawn.possible_moves).to contain_exactly([-1, 0])
    end
  end

  describe 'rook' do
    it 'can move in a straight line (forward/backward side/side)' do
      expect(rook.possible_moves).to contain_exactly(directions[:north], directions[:east], directions[:south], directions[:west])
    end
  end

  describe 'bishop' do
    it 'can move in any diagonal direction' do
      expect(bishop.possible_moves).to contain_exactly(directions[:north_east], directions[:south_east], directions[:south_west], directions[:north_west])
    end
  end

  describe 'knight' do
    it 'can move any direction 2x1 squares' do
      expect(knight.possible_moves).to contain_exactly([-2,-1], [-2, 1], [-1, 2], [1,  2], [2,  1], [2, -1], [1, -2], [-1,-2])
    end
  end

  describe 'queen' do
    it 'can move any direction' do
      expect(queen.possible_moves).to contain_exactly(directions[:north], directions[:east], directions[:south], directions[:west],
                                                      directions[:north_east], directions[:south_east], directions[:south_west], directions[:north_west] )
    end
  end

  describe 'king' do
    it 'can move any direction' do
      expect(queen.possible_moves).to contain_exactly(directions[:north], directions[:east], directions[:south], directions[:west],
                                                      directions[:north_east], directions[:south_east], directions[:south_west], directions[:north_west] )
    end
  end
end