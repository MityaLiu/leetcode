# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  nums1.uniq!
  nums2.uniq!

  nums1.each_with_object([]) do |n, result|
    result << n if nums2.include?(n)
  end
end
