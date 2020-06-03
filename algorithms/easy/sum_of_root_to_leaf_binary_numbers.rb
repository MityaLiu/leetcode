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
def sum_root_to_leaf(root)
  dfs(root)
end

private def dfs(node, parents = '', result = [])
  return 0 unless node

  parents += node.val.to_s

  result << parents.to_i(2) if leaf?(node)

  dfs(node.left, parents, result)
  dfs(node.right, parents, result)

  result.sum
end

private def leaf?(node)
  node && node.left.nil? && node.right.nil?
end
