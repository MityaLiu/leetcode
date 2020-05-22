# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  a = 1

  nums.inject(a) do |sum, num|
    sum += num

    if sum < 1
      a -= sum - 1
      sum = 1
    end

    sum
  end

  a
end
