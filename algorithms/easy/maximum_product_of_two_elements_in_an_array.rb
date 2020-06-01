# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  nums.sort.last(2).map { |v| v - 1 }.reduce(:*)
end
