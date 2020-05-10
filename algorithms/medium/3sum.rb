# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  result = []

  return result if nums.length < 3
  return [nums] if nums.length == 3 && nums.sum.zero?

  nums.sort!

  (0..nums.length - 3).each do |i|
    j = i + 1
    k = nums.length - 1

    while j < k
      sum = nums[i] + nums[j] + nums[k]
      if sum.negative?
        j += 1
      elsif sum.positive?
        k -= 1
      else
        result.push([nums[i], nums[j], nums[k]])
        j += 1
        k -= 1
      end

    end
  end

  result.uniq
end
