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
def increasing_bst(root)
  nodes = dfs(root)

  nodes.each_with_index do |node, i|
    node.left = nil
    node.right = nodes[i + 1]
  end

  nodes.first
end

private def dfs(node)
  return [] unless node

  dfs(node.left) + [node] + dfs(node.right)
end
