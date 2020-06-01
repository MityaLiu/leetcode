# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort.each_slice(2).map { |a, b| [a, b].min }.sum
end
