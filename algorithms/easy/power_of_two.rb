# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return true if n == 1
  return false if n < 1 || n.odd?

  is_power_of_two(n / 2)
end
