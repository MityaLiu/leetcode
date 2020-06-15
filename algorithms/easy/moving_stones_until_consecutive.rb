# frozen_string_literal: true

# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer[]}
def num_moves_stones(a, b, c)
  a, b, c = [a, b, c].sort

  return [0, 0] if b - a == 1 && c - b == 1

  hi = c - a - 2
  lo = b - a > 2 && c - b > 2 ? 2 : 1

  [lo, hi]
end
