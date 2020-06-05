# frozen_string_literal: true

# @param {Integer[][]} grid
# @return {Integer}
def projection_area(grid)
  xy = grid.flatten.count(&:positive?)
  yz = grid.sum(&:max)
  zx = rotate(grid).sum(&:max)

  xy + yz + zx
end

private def rotate(grid)
  grid.each_with_object([]) do |row, result|
    row.each_with_index do |v, j|
      result[j] ||= []
      result[j] << v
    end
  end
end
