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
# @return {Integer}
def path_sum(root, sum)
  return 0 if root.nil?

  dfs(root, sum) + path_sum(root.left, sum) + path_sum(root.right, sum)
end

private def dfs(node, sum)
  return 0 if node.nil?

  sum -= node.val

  (sum.zero? ? 1 : 0) + dfs(node.left, sum) + dfs(node.right, sum)
end
