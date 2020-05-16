# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} limit
# @return {Integer}
def longest_subarray(nums, limit)
  longest = 1
  min = nums[0]
  max = nums[0]
  k = 1

  (1..nums.length - 1).each do |i|
    if nums[i] > max
      max = nums[i]
      min = max - limit
      k = 1
      k += 1 while (i - k > -1) && nums[i - k] >= max - limit && nums[i - k] <= max
    elsif nums[i] < min
      min = nums[i]
      max = min + limit
      k = 1
      k += 1 while (i - k > -1) && nums[i - k] <= min + limit && nums[i - k] >= min
    else
      k += 1
    end

    longest = k if k > longest
  end

  longest
end
