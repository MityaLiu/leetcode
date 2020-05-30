# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n <= 0

  pow = Math.log(n, 3).ceil

  3**pow == n
end
