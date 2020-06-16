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
def find_second_minimum_value(root)
  dfs(root)[1] || -1
end

private def dfs(node, acum = Hash.new(0))
  return [] unless node

  ([node.val] + dfs(node.left, acum) + dfs(node.right, acum)).uniq.sort
end
