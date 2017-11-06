require_relative '../../lib/chess'
require_relative '../../lib/board'
require_relative '../../lib/piece'
require_relative '../../lib/player'

RSpec.describe Chess do

  describe '#initialize' do
    # Variables
    let(:init_board) { Board.new }
    let(:c) { Chess.new }

    it 'should create a board' do
      expect(c.board.board).to eq(init_board)
    end




    # it 'should set the active_player to white'
    # it 'should have white and black player objects'

    #it 'should be active' do
    #  pending 'not sure if it needs to be active'
    #  expect(true).to eq(false)
    #end
  end
end