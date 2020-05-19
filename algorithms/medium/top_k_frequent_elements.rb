# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  h = Hash.new(0)

  nums.each { |n| h[n] += 1 }

  h.sort_by { |_k, v| v }.last(k).map(&:first)
end
