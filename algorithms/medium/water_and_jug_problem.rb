# frozen_string_literal: true

# @param {Integer} x
# @param {Integer} y
# @param {Integer} z
# @return {Boolean}
def can_measure_water(x, y, z)
  return false if z > x + y
  return true if z <= 0

  z % x.gcd(y) == 0
end
