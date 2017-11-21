
# Chess Piece
class Piece
  attr_reader :type, :color, :location, :possible_moves

  def initialize(type = 'pawn', color = 'white', location = [-1,-1])
    @type = type
    @color = color
    @location = location
    @possible_moves = assign_abilities(type)
  end

  private

  def assign_abilities(type = 'pawn')
    abilities = []
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

    case type
      when 'king'
        directions.values.each { |d| abilities.push(d) }
      when 'queen'
        directions.values.each { |d| abilities.push(d) }
      when 'rook'
        abilities.push( directions[:north],
                        directions[:east],
                        directions[:south],
                        directions[:west] )
      when 'knight'
        abilities.push(
          [-2,-1],
          [-2, 1],
          [-1, 2],
          [1,  2],
          [2,  1],
          [2, -1],
          [1, -2],
          [-1,-2]
        )
      when 'bishop'
        abilities.push( directions[:north_east],
                        directions[:south_east],
                        directions[:south_west],
                        directions[:north_west] )
      else
        abilities.push(directions[:north])
    end
    abilities
  end
end