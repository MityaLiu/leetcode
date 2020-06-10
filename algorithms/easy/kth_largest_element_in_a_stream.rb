# frozen_string_literal: true

class KthLargest
  attr_reader :k, :nums

  # :type k: Integer
  # :type nums: Integer[]
  def initialize(k, nums)
    @k = k
    @nums = nums.size > k ? nums.sort[-k..-1] : nums.sort
  end

  # :type val: Integer
  # :rtype: Integer
  def add(val)
    index = nums.index { |v| v > val }

    if index
      nums.insert(index, val)
    else
      nums << val
    end

    nums.shift if nums.size > k

    nums.first
  end
end

# Your KthLargest object will be instantiated and called as such:
# obj = KthLargest.new(k, nums)
# param_1 = obj.add(val)
