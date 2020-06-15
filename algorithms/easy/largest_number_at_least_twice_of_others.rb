# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
  return 0 if nums.size == 1

  max = nums.max
  index = nums.index(max)
  nums.delete(max)
  max2 = nums.max

  max && max2 && max >= 2 * max2 ? index : -1
end
