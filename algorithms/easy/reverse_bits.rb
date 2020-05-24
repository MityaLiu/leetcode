# frozen_string_literal: true

# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  str = n.to_s(2)
  str.prepend('0' * (32 - str.size))
  str.reverse.to_i(2)
end
