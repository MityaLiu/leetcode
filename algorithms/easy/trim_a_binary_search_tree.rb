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
# @return {TreeNode}
def trim_bst(root, l, r)
  dfs(root, l, r)
end

private def dfs(node, l, r)
  return unless node

  if node.val > r
    dfs(node.left, l, r)
  elsif node.val < l
    dfs(node.right, l, r)
  else
    node.left = dfs(node.left, l, r)
    node.right = dfs(node.right, l, r)
    node
  end
end
