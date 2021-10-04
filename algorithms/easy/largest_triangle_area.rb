# frozen_string_literal: true

# @param {Integer[][]} points
# @return {Float}
def largest_triangle_area(points)
  points.map.with_index do |a, i|
    points[i + 1..-1].map.with_index do |b, j|
      points[j + 1..-1].map do |c|
        triangle_area(a, b, c)
      end
    end
  end.flatten.max
end

private def triangle_area(a, b, c)
  ((a[0] * (b[1] - c[1])) + (b[0] * (c[1] - a[1])) + (c[0] * (a[1] - b[1]))).abs.to_f / 2
end
