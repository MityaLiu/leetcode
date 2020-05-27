# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  if nums.size < 3
    nums.reverse!
    return
  end

  n = nums[-1]
  i = nums.size - 1

  nums.reverse_each do |num|
    break if num < n

    n = num
    i -= 1
  end

  if i == -1
    nums.reverse!
    return
  end

  j = nums.size - 1

  nums.reverse_each do |num|
    break if nums[i] < num

    j -= 1
  end

  nums[i], nums[j] = nums[j], nums[i]
  nums[(i + 1)..-1] = nums[(i + 1)..-1].reverse

  nil
end
