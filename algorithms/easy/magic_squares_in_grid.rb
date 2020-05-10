# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def num_magic_squares_inside(grid)
  result = 0
  i_size = grid.size
  j_size = grid[0].size
  return 0 if i_size < 3 || j_size < 3

  (0..i_size - 3).each do |i|
    (0..j_size - 3).each do |j|
      result += 1 if magic_square?(grid, i, j)
    end
  end

  result
end

private def magic_square?(grid, i, j)
  q = [
    grid[i][j], grid[i + 1][j], grid[i + 2][j],
    grid[i][j + 1], grid[i + 1][j + 1], grid[i + 2][j + 1],
    grid[i][j + 2], grid[i + 1][j + 2], grid[i + 2][j + 2]
  ]

  return false if q.uniq.sort != (1..9).to_a

  [
    grid[i][j] + grid[i + 1][j] + grid[i + 2][j],
    grid[i][j + 1] + grid[i + 1][j + 1] + grid[i + 2][j + 1],
    grid[i][j + 2] + grid[i + 1][j + 2] + grid[i + 2][j + 2],
    grid[i][j] + grid[i][j + 1] + grid[i][j + 2],
    grid[i + 1][j] + grid[i + 1][j + 1] + grid[i + 1][j + 2],
    grid[i + 2][j] + grid[i + 2][j + 1] + grid[i + 2][j + 2],
    grid[i][j] + grid[i + 1][j + 1] + grid[i + 2][j + 2],
    grid[i + 2][j] + grid[i + 1][j + 1] + grid[i][j + 2]
  ].uniq.size == 1
end
