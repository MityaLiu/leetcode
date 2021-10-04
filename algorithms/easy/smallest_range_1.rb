# frozen_string_literal: true

# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def smallest_range_i(a, k)
  return 0 if a.empty?

  diff = a.max - a.min

  [0, diff - (2 * k)].max
end
