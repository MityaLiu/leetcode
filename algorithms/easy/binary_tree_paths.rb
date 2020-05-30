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
# @return {String[]}
def binary_tree_paths(root)
  @paths = []

  dfs(root)

  @paths.map { |a| a.join('->') }
end

private def dfs(node, path = [])
  return if node.nil?

  path << node.val

  @paths << path if is_leaf?(node)

  dfs(node.left, path.dup)
  dfs(node.right, path.dup)
end

private def is_leaf?(node)
  node.left.nil? && node.right.nil?
end
