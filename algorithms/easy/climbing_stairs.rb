# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n < 3

  @h ||= {}
  return @h[n] if @h.key?(n)

  @h[n] = climb_stairs(n - 1) + climb_stairs(n - 2)
end
