# frozen_string_literal: true

# @param {Integer[][]} moves
# @return {String}
def tictactoe(moves)
  grid = Array.new(9)
  turn = true

  moves.each do |x, y|
    mark = turn ? 'X' : 'O'
    turn = !turn
    grid[(y * 3) + x] = mark
  end

  if winner?(grid, 'X')
    'A'
  elsif winner?(grid, 'O')
    'B'
  elsif draw?(grid)
    'Draw'
  else
    'Pending'
  end
end

private def winner?(grid, mark)
  arr = [
    grid[0..2], grid[3..5], grid[6..8],
    [grid[0], grid[3], grid[6]], [grid[1], grid[4], grid[7]], [grid[2], grid[5], grid[8]],
    [grid[0], grid[4], grid[8]], [grid[2], grid[4], grid[6]]
  ]

  arr.any? { |a| a.uniq == [mark] }
end

private def draw?(grid)
  grid.count(nil).zero?
end
