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
# @param {TreeNode} root
# @param {Integer} l
# @param {Integer} r
# @return {Integer}
def range_sum_bst(root, l, r)
  dfs(root, l..r)
end

private def dfs(node, range)
  return 0 if node.nil?

  val = range.include?(node.val) ? node.val : 0

  val + dfs(node.left, range) + dfs(node.right, range)
end
