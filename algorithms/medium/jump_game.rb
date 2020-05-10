# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  cur_true_idx = nums.size - 1
  (nums.size - 2).downto(0).each do |idx|
    cur_true_idx = idx if idx + nums[idx] >= cur_true_idx
  end
  cur_true_idx.zero?
end
