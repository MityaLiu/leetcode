# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  c = nums.count(0)

  nums.delete(0)

  c.times { nums << 0 }

  nums
end
