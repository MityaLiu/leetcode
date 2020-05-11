# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_pairs(nums, k)
  nums.sort!

  nums.each_with_object([]).with_index do |(num, pairs), i|
    pairs << [num, num - k] if nums[i + 1..-1].include?(num + k)
  end.uniq.count
end
