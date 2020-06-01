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
# @return {Boolean}
def is_unival_tree(root)
  dfs(root, root.val)
end

private def dfs(node, val)
  return true unless node
  return false unless node.val == val

  dfs(node.left, val) && dfs(node.right, val)
end
