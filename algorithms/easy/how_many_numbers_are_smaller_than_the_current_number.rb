# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  nums.map.with_index do |num, i|
    nums.each_with_index.count { |v, j| i != j && v < num }
  end
end
