# frozen_string_literal: true

# @param {Integer[][]} nums
# @return {Integer[]}
def find_diagonal_order(nums)
  x = nums.size
  y = nums.map(&:size).max

  dictionary = {}

  nums.each_with_index do |num, i|
    num.each_with_index do |v, j|
      dictionary[i + j] ||= []
      dictionary[i + j].unshift(v)
    end
  end

  Array.new(x + y) { |k| dictionary[k] }.flatten.compact
end
