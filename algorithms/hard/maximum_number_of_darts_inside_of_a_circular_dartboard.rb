# frozen_string_literal: true

EPS = 10.0**-8

# @param {Integer[][]} points
# @param {Integer} r
# @return {Integer}
def num_points(points, r)
  n = points.size

  (0..n - 1).inject(1) do |ans, i|
    (i + 1..n - 1).each do |j|
      ds = distance(points[i], points[j])**2

      next if ds == 0 || ds > 4 * (r**2)

      rq1, rq2 = center(points[i], points[j], r)

      ans = [ans, check(points, rq1, r), check(points, rq2, r)].max

      return ans if ans == n
    end
    ans
  end
end

private def check(points, rq, r)
  (0..points.size - 1).inject(0) do |cnt, k|
    distance(rq, points[k]) <= r + EPS ? cnt + 1 : cnt
  end
end

private def center(point1, point2, r)
  mid = [(point1[0] + point2[0]).to_f / 2, (point1[1] + point2[1]).to_f / 2]

  half_d = distance(mid, point1)

  vx = (mid[0] - point1[0]) / half_d * r
  vy = (mid[1] - point1[1]) / half_d * r

  cos_t = (half_d / r)
  sin_t = Math.sqrt(1.0 - (cos_t**2))

  rq1 = [(vx * cos_t) - (vy * sin_t) + point1[0], (vx * sin_t) + (vy * cos_t) + point1[1]]
  rq2 = [(vx * cos_t) + (vy * sin_t) + point1[0], (-vx * sin_t) + (vy * cos_t) + point1[1]]

  [rq1, rq2]
end

private def distance(point1, point2)
  Math.sqrt(((point1[0] - point2[0])**2) + ((point1[1] - point2[1])**2))
end
