# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def check_possibility(nums)
  sorted = nums.sort

  nums.each_with_index.any? do |num, i|
    j = sorted.index(num)
    a = nums[0...i] + nums[i + 1..-1]
    b = sorted[0...j] + sorted[j + 1..-1]

    a == b
  end
end
