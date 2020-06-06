# frozen_string_literal: true

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  nums1.map do |num|
    index = nums2.index(num)
    nums2[index + 1..-1].find { |v| v > num } || -1
  end
end
