# Player
class Player
  attr_reader :color

  def initialize(color = 'white')
    @color = color
  end

  def make_move(board)
    { new: [5, 3], old: [6, 3] }
  end

  def checkmated?
    false
  end
end