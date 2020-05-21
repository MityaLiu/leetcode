# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
  index = nums.index(1) || nums.size

  while index < nums.size
    diff = nums[index + 1..-1].index(1)

    return true if diff.nil?

    if diff >= k
      index += diff + 1
    else
      return false
    end
  end

  true
end
