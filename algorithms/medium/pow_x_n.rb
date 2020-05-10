# frozen_string_literal: true

# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  return 1 if n == 0
  return 1.0 / my_pow(x, -n) if n < 0

  v = my_pow(x, n / 2)

  n.even? ? v * v : v * v * x
end
