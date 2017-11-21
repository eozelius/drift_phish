# Player
class Player
  attr_reader :color

  def initialize(color = 'white')
    @color = color
  end

  def move(game_state)
    # raise ArgumentError, 'game_state is not correctly formatted' if game_state.nil?

    { old: [6, 4],
      new: [4, 4] }
  end
end