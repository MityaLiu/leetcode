# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  (1..nums.size).to_a - nums
end
