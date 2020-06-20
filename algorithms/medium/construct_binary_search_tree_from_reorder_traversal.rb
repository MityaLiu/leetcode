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
# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
  return if preorder.empty?

  node = TreeNode.new(preorder.shift)
  node.left = bst_from_preorder(preorder.select { |v| v < node.val })
  node.right = bst_from_preorder(preorder.select { |v| v > node.val })
  node
end
