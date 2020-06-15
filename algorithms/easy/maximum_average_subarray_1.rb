# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  # nums.each_cons(k).map(&:sum).max.to_f / k

  sum = nums[0...k].sum
  max = sum

  (nums.size - k).times do |i|
    sum += nums[i + k] - nums[i]
    max = sum if max < sum
  end

  max.to_f / k
end
