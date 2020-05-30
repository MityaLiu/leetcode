# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  nums.each_with_object([]).with_index do |(num, result), i|
    result << nums.each_with_index.count { |v, j| i != j && v < num }
  end
end
