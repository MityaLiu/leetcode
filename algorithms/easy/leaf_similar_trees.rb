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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  dfs(root1) == dfs(root2)
end

private def dfs(node)
  return [] if node.nil?
  return [node.val] if leaf?(node)

  dfs(node.left) + dfs(node.right)
end

private def leaf?(node)
  node.left.nil? && node.right.nil?
end
