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
# @return {Integer[]}
def get_all_elements(root1, root2)
  (dfs(root1) + dfs(root2)).sort
end

private def dfs(node)
  return [] unless node

  [node.val] + dfs(node.left) + dfs(node.right)
end
