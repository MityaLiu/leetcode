# frozen_string_literal: true

# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
  y = ops.map(&:first).min || m
  x = ops.map(&:last).min || n

  y * x
end
