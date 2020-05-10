# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |num, i1|
    i2 = nums[i1 + 1..-1].index(target - num)
    return [i1, i2 + i1 + 1] if i2
  end
end
