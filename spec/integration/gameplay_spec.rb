require_relative '../../lib/chess'
require_relative '../../lib/piece'
require_relative '../../lib/player'

RSpec.describe 'Gameplay' do
	let (:g) { Chess.new }
	let (:player) { Player.new }

	describe 'move coordinates format' do
		it 'has an prev and next [r, c]' do 
			move = player.move(g.board)
			expect(move).to include(:prev => a_kind_of(Array),
															:goto => a_kind_of(Array))

		end

		it 'has a new [r, c]' do
		end
	end	
end