# frozen_string_literal: true

# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  result = []

  (n / 2).times { |i| result += [-i - 1, i + 1] }

  result << 0 if n.odd?

  result
end
