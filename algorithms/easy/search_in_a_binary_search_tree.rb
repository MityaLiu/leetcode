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
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
  dfs(root, val)
end

private def dfs(node, val)
  return unless node
  return node if node.val == val

  dfs(node.left, val) || dfs(node.right, val)
end
