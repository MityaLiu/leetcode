# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def surface_area(grid)
  r = grid.size
  c = grid[0].size

  grid.each_with_index.sum do |row, i|
    row.each_with_index.sum do |v, j|
      [
        v.zero? ? 0 : 2, # top & bottom
        [0, v - (i > 0     ? grid[i - 1][j] : 0)].max, # left
        [0, v - (i < r - 1 ? grid[i + 1][j] : 0)].max, # right
        [0, v - (j > 0     ? grid[i][j - 1] : 0)].max, # back
        [0, v - (j < c - 1 ? grid[i][j + 1] : 0)].max # front
      ].sum
    end
  end
end
