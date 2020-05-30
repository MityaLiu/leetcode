# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  a = Array.new(nums.size + 1) { |i| i }

  (a - nums).first
end
