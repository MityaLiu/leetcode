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
# @return {TreeNode}
def prune_tree(root)
  dfs(root)

  root
end

private def dfs(node)
  return false unless node

  left = dfs(node.left) || node.left&.val == 1
  right = dfs(node.right) || node.right&.val == 1

  node.left = nil unless left
  node.right = nil unless right

  left || right
end
