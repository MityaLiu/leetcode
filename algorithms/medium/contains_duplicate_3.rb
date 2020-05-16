# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} k
# @param {Integer} t
# @return {Boolean}
def contains_nearby_almost_duplicate(nums, k, t)
  t.zero? ? t_eq_zero(nums, k) : t_gt_zero(nums, k, t)
end

private def t_eq_zero(nums, k)
  nums.each_with_object({}).with_index do |(num, map), i|
    return true if map.key?(num) && (map[num] - i).abs <= k

    map[num] = i
  end

  false
end

private def t_gt_zero(nums, k, t)
  nums.each_with_object({}).with_index do |(num, buckets), i|
    bucketnum = num / t

    (bucketnum - 1..bucketnum + 1).each do |n|
      return true if buckets.key?(n) && (buckets[n] - num).abs <= t
    end

    buckets[bucketnum] = num
    buckets.delete(nums[i - k] / t) if i >= k
  end

  false
end
