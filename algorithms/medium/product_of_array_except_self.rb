# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  z = nums.count(0)
  m = nums.reject(&:zero?).reduce(:*)

  result = z.zero? ? nums.map { |v| m / v } : Array.new(nums.size, 0)

  result[nums.index(0)] = m if z == 1

  result
end
