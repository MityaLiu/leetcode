# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  # nums.uniq!
  # return nums[0] if nums.size == 1
  # nums.find.with_index { |e, i| e < nums[i-1] }

  len = nums.size
  left = 0
  right = len - 1

  while left <= right
    mid = (left + right) / 2

    if nums[mid] > nums[right]
      left = mid + 1
    elsif nums[mid] < nums[right]
      right = mid
    else
      right -= 1
    end
  end

  nums[left]
end
