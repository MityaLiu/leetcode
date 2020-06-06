# frozen_string_literal: true

# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
  grid.flatten.rotate(-k).each_slice(grid[0].size).to_a
end
