# frozen_string_literal: true

# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  return nums if r * c > nums[0].size * nums.size

  nums.flatten!

  r.times.each_with_object([]) do |j, result|
    result[j] ||= []
    c.times { |i| result[j][i] = nums.shift }
  end
end
