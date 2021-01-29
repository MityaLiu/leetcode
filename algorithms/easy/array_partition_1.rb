# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort.each_slice(2).sum { |a, b| [a, b].min }
end
