# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  nums.sort!

  max = nums.pop

  f = nums.first(2).reduce(:*)
  l = nums.last(2).reduce(:*)

  max * (max.positive? ? [f, l].max : [f, l].min)
end
