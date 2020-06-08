# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  nums[0...n].zip(nums[n..-1]).flatten
end
