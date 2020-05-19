# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  counter = Hash.new(0)
  nums1.each { |n| counter[n] += 1 }
  nums2.select { |n| (counter[n] -= 1) >= 0 }
end
