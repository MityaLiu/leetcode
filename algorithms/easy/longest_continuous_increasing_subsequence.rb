# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  return 1 if nums.size == 1

  max = 0
  i = 0

  while i < nums.size - 1
    dist = nums[i..-1].index.with_index { |v, j| j > 0 && nums[i + j - 1] >= v } || (nums.size - i)

    i += dist

    max = [max, dist].max
  end

  max
end
