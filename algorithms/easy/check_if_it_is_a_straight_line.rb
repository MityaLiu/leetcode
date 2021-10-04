# frozen_string_literal: true

# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
  return false if coordinates.empty?
  return true if coordinates.size < 3

  first = coordinates.shift
  second = coordinates.shift

  coordinates.all? { |c| empty_area?(first, second, c) }
end

private def empty_area?(a, b, c)
  ((a[0] * (b[1] - c[1])) + (b[0] * (c[1] - a[1])) + (c[0] * (a[1] - b[1]))).zero?
end
