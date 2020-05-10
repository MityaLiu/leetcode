# frozen_string_literal: true

# @param {Integer[][]} points
# @return {Integer}
def max_points(points)
  return points.size if points.uniq.size < 2

  points.each_with_object([]).with_index do |(point, result), index|
    next if index == points.size - 1

    same_points = 1
    q = points.drop(index + 1).each_with_object([]) do |po, sub_result|
      if point == po
        same_points += 1
      else
        x = point[0] - po[0]
        y = point[1] - po[1]
        g = x.gcd(y)
        g = -g if x < 0 || x == 0 && y < 0

        # g = 1 if g.zero?

        sub_result << "#{x / g},#{y / g}"
      end
    end
    result << q.uniq.map { |c| q.count(c) }.max.to_i + same_points
  end.max
end
