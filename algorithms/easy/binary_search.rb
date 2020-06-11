# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  (0...nums.size).bsearch do |x|
    target - nums[x]
  end || -1
end
