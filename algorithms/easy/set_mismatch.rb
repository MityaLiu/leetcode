# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  h = Array.new(nums.size) { |i| [i + 1, 0] }.to_h

  nums.each { |n| h[n] += 1 }

  [h.key(2), h.key(0)]
end
