# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  median(nums1 + nums2)
end

private def median(arr)
  arr.sort!
  length = arr.count
  if length.even?
    arr.values_at((length / 2) - 1, length / 2).sum / 2.0
  else
    arr.at(length / 2)
  end
end
