# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  digits = n.to_s.chars.map(&:to_i)

  digits.reduce(:*) - digits.reduce(:+)
end
