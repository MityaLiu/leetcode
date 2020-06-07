# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  !/11|00/.match?(n.to_s(2))
end
