# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
  h = Hash.new(0)

  nums.each { |n| h[n] += 1 }

  return 0 if h.size < 2

  h.sort.each_cons(2).map do |a, b|
    (b[0] - a[0]).abs == 1 ? a[1] + b[1] : 0
  end.max
end
