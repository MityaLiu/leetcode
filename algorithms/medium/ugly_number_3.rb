# frozen_string_literal: true

# @param {Integer} n
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def nth_ugly_number(n, a, b, c)
  ab = a.lcm(b)
  ac = a.lcm(c)
  bc = b.lcm(c)
  abc = ab.lcm(c)
  (1..2 * 10**9).bsearch { |m| m / a + m / b + m / c - m / ab - m / ac - m / bc + m / abc >= n }
end
