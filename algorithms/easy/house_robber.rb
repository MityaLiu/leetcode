# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  rob_include_nth = 0
  rob_exclude_nth = 0

  nums.each do |num|
    rob_include_nth, rob_exclude_nth = rob_exclude_nth + num, [rob_exclude_nth, rob_include_nth].max
  end

  [rob_include_nth, rob_exclude_nth].max
end
