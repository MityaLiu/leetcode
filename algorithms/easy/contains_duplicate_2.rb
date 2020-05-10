# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  map = {}
  nums.each_with_index do |num, i|
    return true if map[num] && (i - map[num]) <= k

    map[num] = i
  end
  false
end
