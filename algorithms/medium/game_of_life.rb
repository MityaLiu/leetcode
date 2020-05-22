# frozen_string_literal: true

# @param {Integer[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def game_of_life(board)
  result = board.map.with_index do |row, y|
    row.map.with_index do |cell, x|
      transform(cell, count_neighbors(board, [x, y]))
    end
  end

  board.replace(result)
end

private def transform(cell, neighbors)
  if cell == 1 && neighbors != 2 && neighbors != 3
    0
  elsif cell == 0 && neighbors == 3
    1
  else
    cell
  end
end

private def count_neighbors(board, point)
  x_range = ([0, point[0] - 1].max..[point[0] + 1, board[0].size - 1].min)
  y_range = ([0, point[1] - 1].max..[point[1] + 1, board.size - 1].min)

  y_range.inject(0) do |result, j|
    result + x_range.count { |i| point != [i, j] && board[j][i] == 1 }
  end
end
