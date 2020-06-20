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
# @return {TreeNode}
def balance_bst(root)
  values = dfs(root).sort

  dfs2(values)
end

private def dfs(node)
  return [] unless node

  [node.val] + dfs(node.left) + dfs(node.right)
end

private def dfs2(values)
  return if values.empty?

  mid = values.size / 2

  TreeNode.new(values[mid], dfs2(values[0...mid]), dfs2(values[mid + 1..-1]))
end
