# frozen_string_literal: true

class Solution
  attr_reader :nums, :shuf

  # :type nums: Integer[]
  def initialize(nums)
    @nums = nums
    reset
  end

  # Resets the array to its original configuration and return it.
  # :rtype: Integer[]
  def reset
    @shuf = nums.dup
  end

  # Returns a random shuffling of the array.
  # :rtype: Integer[]
  def shuffle
    @shuf.shuffle!
  end
end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(nums)
# param_1 = obj.reset()
# param_2 = obj.shuffle()
