# frozen_string_literal: true

# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
  size = points.size

  points.each_with_index.sum do |point, i|
    next 0 if i == size - 1

    time_to_travel(point, points[i + 1])
  end
end

private def time_to_travel(point1, point2)
  x_d = (point2[0] - point1[0]).abs
  y_d = (point2[1] - point1[1]).abs

  [x_d, y_d].min + (x_d - y_d).abs
end
