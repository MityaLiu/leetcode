# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  nums.each_with_object([]) do |num, result|
    # index = result.index { |v| v >= num } || result.size
    index = (0...result.size).bsearch { |i| result[i] >= num } || result.size
    result[index] = num
  end.size
end
