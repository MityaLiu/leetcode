# frozen_string_literal: true

# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  k = 1

  k += 1 while k * k < num

  k**2 == num
end
