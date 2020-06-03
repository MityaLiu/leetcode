# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  grid.each_with_index.sum do |row, y|
    row.each_with_index.sum do |v, x|
      next 0 if v.zero?

      count_borders(grid, y, x)
    end
  end
end

private def count_borders(grid, y, x)
  size_x = grid[0].size
  size_y = grid.size

  top = y.zero? ? 0 : grid[y - 1][x]
  left = x.zero? ? 0 : grid[y][x - 1]
  right = x == size_x - 1 ? 0 : grid[y][x + 1]
  bottom = y == size_y - 1 ? 0 : grid[y + 1][x]

  4 - top - left - right - bottom
end
