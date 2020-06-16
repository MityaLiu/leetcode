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
# @return {Integer[]}
def find_mode(root)
  acum = dfs(root)

  max = acum.values.max

  acum.select { |_k, v| v == max }.map(&:first) || []
end

private def dfs(node, acum = Hash.new(0))
  return {} unless node

  acum[node.val] += 1

  dfs(node.left, acum)
  dfs(node.right, acum)

  acum
end
