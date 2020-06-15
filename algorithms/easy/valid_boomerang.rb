# frozen_string_literal: true

# @param {Integer[][]} points
# @return {Boolean}
def is_boomerang(points)
  a, b, c = points

  (a[0] * (b[1] - c[1]) + b[0] * (c[1] - a[1]) + c[0] * (a[1] - b[1])).abs > 0
end
