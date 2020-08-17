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
# @return {Integer}
def sum_of_left_leaves(root)
  dfs(root)
end

private def dfs(node, left: false)
  return 0 if node.nil?

  if is_leaf?(node)
    left ? node.val : 0
  else
    dfs(node.left, true) + dfs(node.right, false)
  end
end

private def is_leaf?(node)
  node.left.nil? && node.right.nil?
end
