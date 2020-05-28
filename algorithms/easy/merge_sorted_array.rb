# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  n = nums1.first(m) + nums2.first(n)
  nums1.replace(n.sort)
end
