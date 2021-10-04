# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  epected_size = nums.size - (nums.size / 2)
  nums.uniq.find { |num| (nums - [num]).size < epected_size }
end
