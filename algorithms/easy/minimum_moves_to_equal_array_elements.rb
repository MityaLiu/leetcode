# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  nums.sum - nums.min * nums.count
end
