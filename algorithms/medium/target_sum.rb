# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} s
# @return {Integer}
def find_target_sum_ways(nums, s)
  s = s.abs
  sum = nums.sum

  return 0 if sum < s || (s + sum).odd?

  target = (s + sum) / 2

  dp = Array.new(target + 1, 0)
  dp[0] = 1

  nums.each do |num|
    tmp = dp.dup
    (0..target - num).each { |i| tmp[i + num] += dp[i] }
    dp = tmp
  end

  dp[target]
end
