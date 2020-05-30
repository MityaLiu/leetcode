# frozen_string_literal: true

class NumArray
  attr_reader :nums

  # :type nums: Integer[]
  def initialize(nums)
    @nums = nums
  end

  # :type i: Integer
  # :type j: Integer
  # :rtype: Integer
  def sum_range(i, j)
    nums[i..j].sum
  end
end

# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(i, j)
