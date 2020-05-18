# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_unsorted_subarray(nums)
  size = nums.size
  # left = 0
  # right = size - 1
  t = nums.sort

  left = nums.index.with_index { |n, i| i < size && n != t[i] } || size
  # left += 1 while left < size && nums[left] == t[left]

  right = nums.rindex.with_index { |n, i| size - 1 - i <= left || n != t[size - 1 - i] } || 0
  # right -= 1 while right > left && nums[right] == t[right]

  right - left + 1
end
