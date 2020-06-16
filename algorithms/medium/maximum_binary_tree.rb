# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
  return if nums.empty?

  max = nums.max
  index = nums.index(max)

  TreeNode.new(max, construct_maximum_binary_tree(nums[0...index]), construct_maximum_binary_tree(nums[index + 1..-1]))
end
