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
# @param {Integer} target
# @return {TreeNode}
def remove_leaf_nodes(root, target)
  dfs(root, target)

  leaf?(root) && root.val == target ? nil : root
end

private def dfs(node, target)
  return unless node

  dfs(node.left, target)
  dfs(node.right, target)

  node.left = nil if leaf?(node.left) && node.left.val == target
  node.right = nil if leaf?(node.right) && node.right.val == target
end

private def leaf?(node)
  node && node.left.nil? && node.right.nil?
end
