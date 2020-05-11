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
def inorder_traversal(root)
  @res = []
  recursive_dfs(root)
  @res
end

def recursive_dfs(root)
  return unless root

  recursive_dfs(root.left) if root.left
  @res << root.val
  recursive_dfs(root.right) if root.right
end
