# frozen_string_literal: true

# @param {Integer} num
# @return {Boolean}
def is_power_of_four(num)
  return false if num <= 0

  pow = Math.log(num, 4).ceil

  4**pow == num
end
