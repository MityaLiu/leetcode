# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
  previous_height = grid.sum(&:sum)
  new_height = raise_height(grid).sum(&:sum)

  new_height - previous_height
end

private def raise_height(grid)
  horizontal = max_top_or_bottom(grid)
  vertical = max_left_or_right(grid)

  grid.each_with_index do |row, i|
    row.each_with_index do |_v, j|
      grid[i][j] = [vertical[i], horizontal[j]].min
    end
  end
end

private def max_top_or_bottom(grid)
  rotate(grid).map(&:max)
end

private def max_left_or_right(grid)
  grid.map(&:max)
end

private def rotate(grid)
  grid.each_with_object([]).with_index do |(row, result), i|
    row.each_with_index do |v, j|
      result[j] ||= []
      result[j][i] = v
    end
  end
end
