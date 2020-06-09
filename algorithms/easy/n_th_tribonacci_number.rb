# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  @h ||= {}

  case n
  when 0
    0
  when 1, 2
    1
  else
    (n - 3..n - 1).sum { |v| @h[v] ||= tribonacci(v) }
  end
end
