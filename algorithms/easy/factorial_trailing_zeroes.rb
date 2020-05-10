# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  return 0 if n < 5

  z = 0
  Math.log(n, 5).floor.times do |a|
    z += n / 5**(a + 1)
  end
  z
end
