# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def circular_array_loop(nums)
  nums.each_with_index do |num, i|
    return true if num != 0 && itr(nums, i)
  end

  false
end

private def itr(nums, ori)
  i = ori
  depth = 0

  while true
    next_step = (nums[i] + i) % nums.length
    break if nums[next_step] == 0 || nums[next_step] * nums[i] < 0 || i == next_step

    i = next_step
    depth += 1
    return true if depth > nums.length
  end

  nums[i] = 0

  while i != ori
    next_step = (nums[ori] + ori) % nums.length
    nums[ori] = 0
    ori = next_step
  end

  false
end
