# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  nums.each_with_index do |num, i|
    break if i == nums.size - 1

    nums.replace(nums[0..i] + (nums[i + 1..-1] - [num]))
  end

  nums.size
end
