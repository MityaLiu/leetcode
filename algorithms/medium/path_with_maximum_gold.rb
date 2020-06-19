# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def get_maximum_gold(grid)
  grid.map.with_index do |row, j|
    row.map.with_index do |v, i|
      v.zero? ? 0 : backtrack(grid.map(&:dup), i, j, v)
    end.max
  end.max
end

private def backtrack(grid, i, j, result)
  m = grid.size
  n = grid[0].size

  grid[j][i] = 0

  neighbors = [[j, i - 1], [j, i + 1], [j - 1, i], [j + 1, i]].reject do |nj, ni|
    ni < 0 || nj < 0 || ni > n - 1 || nj > m - 1 || grid[nj][ni].zero?
  end

  return result if neighbors.empty?

  neighbors.map { |nj, ni| backtrack(grid.map(&:dup), ni, nj, result + grid[nj][ni]) }.max
end
