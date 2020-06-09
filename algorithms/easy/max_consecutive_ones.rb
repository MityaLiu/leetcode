# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  nums.join.split('0').max_by(&:length)&.length || 0
end
