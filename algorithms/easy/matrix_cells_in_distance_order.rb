# frozen_string_literal: true

# @param {Integer} r
# @param {Integer} c
# @param {Integer} r0
# @param {Integer} c0
# @return {Integer[][]}
def all_cells_dist_order(r, c, r0, c0)
  result = []

  r.times do |y|
    c.times { |x| result << [y, x] }
  end

  result.sort_by { |y, x| distance([y, x], [r0, c0]) }
end

private def distance(point1, point2)
  (point1[1] - point2[1]).abs + (point1[0] - point2[0]).abs
end
