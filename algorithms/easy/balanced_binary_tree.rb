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
def is_balanced(root)
  @balanced = true
  dfs(root)
  @balanced
end

private def dfs(node)
  return 0 unless node

  left = dfs(node.left)
  right = dfs(node.right)

  @balanced = false if (left - right).abs > 1

  [left, right].max + 1
end
