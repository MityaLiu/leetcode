# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.sort!
  a = nil
  b = nil
  size = nums.size / 2 - 1

  (0..size).each do |i|
    a, b = nums.values_at(i * 2, i * 2 + 1)
    break if a != b
  end

  a != b ? a : nums.last
end
