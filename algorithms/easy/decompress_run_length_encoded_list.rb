# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
  result = []

  nums.each_slice(2) do |a, b|
    a.times { result << b }
  end

  result
end
