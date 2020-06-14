# frozen_string_literal: true

# @param {Integer[][]} points
# @return {Integer}
def number_of_boomerangs(points)
  points.sum do |p1|
    h = Hash.new(0)

    points.sum do |p2|
      d = sqr_distance(p1, p2)

      (2 * h[d]).tap { h[d] += 1 }
    end
  end
end

private def sqr_distance(p1, p2)
  (p1[0] - p2[0])**2 + (p1[1] - p2[1])**2
end
