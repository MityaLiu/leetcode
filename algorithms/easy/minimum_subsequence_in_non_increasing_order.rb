# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def min_subsequence(nums)
  subsequence = []

  while subsequence.sum <= nums.sum
    max = nums.max
    subsequence << max
    nums.delete_at(nums.index(max))
  end

  subsequence
end
