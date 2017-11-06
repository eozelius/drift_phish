require_relative 'support/dependency_helper'

# Chess Piece
class Piece
  attr_reader :type, :location, :color, :possible_moves, :best_move

  def initialize(type = 'pawn', location = [0,0], color = 'white')
    @type = type
    @location = location
    @color = color
  end

  def possible_moves
    [[0,0], [5,5]]
  end

  def best_move
    [4,4]
  end
end