# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  previous_sum = 0

  nums.inject(nums[0]) do |result, n|
    previous_sum = [n, previous_sum + n].max
    [result, previous_sum].max
  end
end
