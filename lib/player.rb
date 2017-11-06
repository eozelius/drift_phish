require_relative 'chess'
require_relative 'board'
require_relative 'piece'
# Player
class Player
  attr_reader :color

  def initialize(color = 'white')
    @color = color
  end

  def make_move

  end
end