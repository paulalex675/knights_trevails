$board_spaces = [[1, 1], [1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8], 
[2, 1], [2, 2], [2, 3], [2, 4], [2, 5], [2, 6], [2, 7], [2, 8],
[3, 1], [3, 2], [3, 3], [3, 4], [3, 5], [3, 6], [3, 7], [3, 8],
[4, 1], [4, 2], [4, 3], [4, 4], [4, 5], [4, 6], [4, 7], [4, 8],
[5, 1], [5, 2], [5, 3], [5, 4], [5, 5], [5, 6], [5, 7], [5, 8],
[6, 1], [6, 2], [6, 3], [6, 4], [6, 5], [6, 6], [6, 7], [6, 8],
[7, 1], [7, 2], [7, 3], [7, 4], [7, 5], [7, 6], [7, 7], [7, 8], 
[8, 1], [8, 2], [8, 3], [8, 4], [8, 5], [8, 6], [8, 7], [8, 8]]

class Knight
  attr_accessor :current_position
  attr_reader :colour, :side

  def initialize(colour, side)
    @colour = colour
    @side = side
    start_position
    @current_position = start_position.flatten
  end

  def start_position(arr = [])
    if colour == 'white' && side == 'right'
      arr << (x = 7, y = 1)
    elsif colour == 'white' && side == 'left'
      arr << (x = 2, y = 1)
    elsif colour == 'black' && side == 'right'
      arr << (x = 7, y = 8)
    else colour == 'black' && side == 'left'
      arr << (x = 2, y = 8)
    end
    return arr
  end

  def create_poss_moves
    poss_moves = []
     x = current_position[0].to_i
     y = current_position[1].to_i
    $board_spaces.each do |a| if ( a[0] == x +2 || a[0] == x - 2) && ( a[1] == y + 1 || a[1] == y - 1)
            poss_moves << a
        elsif (a[0] == x + 1 || a[0] == x - 1) && (a[1] == y + 2 || a[1] == y - 2)
            poss_moves << a
        else next
        end
    end
    poss_moves 
  end
end

br_knight = Knight.new('black', 'right')

#p br_knight.start_position
p br_knight.current_position
p br_knight.create_poss_moves



