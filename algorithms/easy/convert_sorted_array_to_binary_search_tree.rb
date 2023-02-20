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
def sorted_array_to_bst(nums)
  return if nums.empty?

  mid = nums.size / 2

  TreeNode.new(nums[mid], sorted_array_to_bst(nums[0...mid]), sorted_array_to_bst(nums[mid + 1..-1]))
end
