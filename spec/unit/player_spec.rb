require_relative '../../lib/chess'
require_relative '../../lib/piece'
require_relative '../../lib/player'

RSpec.describe Player do
	let(:g) { Chess.new }
	let(:player) { Player.new }

	describe '#initialize' do 
		it 'assigns color;  White by default;  Black by assignment' do
			expect(player.color).to eq('white')
			
			black_player = Player.new('black')
			expect(black_player.color).to eq('black')
		end
	end

	describe '#move' do
		it 'returns prev and goto [r, c]' do 
			move = player.move(g.board)
			expect(move).to include(:prev => a_kind_of(Array),
															:goto => a_kind_of(Array))
		end

		it 'needs a board to play' do
			move = player.move(nil)
			expect(move).to eq(false)
		end
	end

	describe '#possible_moves' do
		it 'returns only their own color pieces' do


		end
  end

  describe '#my_pieces' do
    it 'returns only my own pieces' do
      pieces = player.my_pieces(g.board)
      expect(pieces.count).to be > 0
      expect(pieces.count).to be < 17

      pieces.each do |p|
        expect(p.color).to eq(p.color)
      end
    end
  end
end