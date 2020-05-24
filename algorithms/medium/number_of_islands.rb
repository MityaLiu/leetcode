# frozen_string_literal: true

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  return 0 if grid.empty?

  m = grid.size
  n = grid[0].size

  result = 0
  cmap = {}

  (m * n).times do |ij|
    next if cmap[ij]

    i, j = ij.divmod(n)

    next if grid[i][j] != '1'

    q = [ij]

    until q.empty?
      coordinate = q.shift
      next if cmap[coordinate]

      x, y = coordinate.divmod(n)
      q << coordinate - n if     x > 0 && grid[x - 1][y] == '1'
      q << coordinate + n if x + 1 < m && grid[x + 1][y] == '1'
      q << coordinate - 1 if     y > 0 && grid[x][y - 1] == '1'
      q << coordinate + 1 if y + 1 < n && grid[x][y + 1] == '1'

      cmap[coordinate] = true
    end

    result += 1
  end

  result
end
