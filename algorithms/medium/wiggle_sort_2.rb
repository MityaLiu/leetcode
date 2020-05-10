# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def wiggle_sort(nums)
  nums.sort!
  size = nums.size - 1
  mid = size / 2
  a = nums[0..mid]
  b = nums[mid + 1..-1]
  i = 0

  a.zip(b) do |arr|
    arr.reverse! if size.odd?
    nums[size - i] = arr[0]
    nums[size - i - 1] = arr[1] unless arr[1].nil?
    i += 2
  end
end
