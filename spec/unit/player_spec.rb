require_relative '../../lib/chess'
require_relative '../../lib/piece'
require_relative '../../lib/player'

RSpec.describe Player do
	let (:g) { Chess.new }
	let (:player) { Player.new }

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

		it 'prev cannot be an empty/invalid square' do



		end
	end	
end