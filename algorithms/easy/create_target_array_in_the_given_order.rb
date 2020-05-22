# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  index.each_with_object([]).with_index do |(ind, result), i|
    result.insert(ind, nums[i])
  end
end
