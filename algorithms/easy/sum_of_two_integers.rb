# frozen_string_literal: true

MASK = 0xffffffff

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
  while b & MASK > 0
    carry = (a & b) << 1
    a ^= b
    b = carry
  end

  b > 0 ? (a & MASK) : a
end
