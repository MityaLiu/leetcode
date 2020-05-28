# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  i = nums.index(target)
  j = nums.index { |v| v > target }

  i || j || nums.size
end
