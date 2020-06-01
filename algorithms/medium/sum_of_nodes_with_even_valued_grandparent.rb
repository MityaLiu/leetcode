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
def sum_even_grandparent(root)
  dfs(root)
end

private def dfs(node, parents = [])
  return 0 unless node

  grandparent = parents[-2]

  val = grandparent&.val&.even? ? node.val : 0

  parents << node

  val + dfs(node.left, parents.dup) + dfs(node.right, parents.dup)
end
