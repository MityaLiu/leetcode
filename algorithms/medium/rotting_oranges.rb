# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)
  new_count = count_fresh(grid)
  time = 0

  until new_count.zero?
    old_count = new_count
    rot_all_adjacent(grid)
    new_count = count_fresh(grid)
    time += 1
    # did not improve
    return -1 if old_count == new_count
  end

  time
end

private def count_fresh(grid)
  grid.flatten.count(1)
end

private def rot_all_adjacent(grid)
  coords = []

  grid.each_with_index do |row, j|
    row.each_with_index do |v, i|
      coords << [j, i] if v == 2
    end
  end

  rot_adjacent(grid, coords)
end

private def rot_adjacent(grid, coords)
  adjacent_coords = []

  coords.each do |j, i|
    adjacent_coords << [j - 1, i] if j > 0
    adjacent_coords << [j + 1, i] if j < grid.size - 1
    adjacent_coords << [j, i - 1] if i > 0
    adjacent_coords << [j, i + 1] if i < grid[0].size - 1
  end

  adjacent_coords.each do |y, x|
    grid[y][x] = 2 if grid[y][x] == 1
  end
end
