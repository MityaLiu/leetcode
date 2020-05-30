# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  a = nums.uniq.sort

  a.size >= 3 ? a[-3] : a[-1]
end
