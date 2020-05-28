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
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
  return false if root.nil?

  dfs(root, sum, root.left.nil? && root.right.nil?)
end

private def dfs(node, sum, is_leaf)
  return sum.zero? && is_leaf if node.nil?

  dfs(node.left, sum - node.val, node.right.nil?) || dfs(node.right, sum - node.val, node.left.nil?)
end
