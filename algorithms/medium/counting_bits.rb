# frozen_string_literal: true

# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  Array.new(num + 1) { |i| i.to_s(2).count('1') }
end
