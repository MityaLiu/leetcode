# frozen_string_literal: true

# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
  h = {}

  r = nums.sort_by(&:-@)

  r.each_with_index do |n, i|
    h[n] =
      case i
      when 0
        'Gold Medal'
      when 1
        'Silver Medal'
      when 2
        'Bronze Medal'
      else
        (i + 1).to_s
      end
  end

  nums.map { |n| h[n] }
end
