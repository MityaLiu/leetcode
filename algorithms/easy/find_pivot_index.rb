# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  size = nums.size
  return -1 if size.zero? || size == 2

  total = nums.sum
  left = 0

  nums.each_with_index do |num, i|
    total -= num
    return i if total == left

    left += num
  end

  -1
end
