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
def bst_to_gst(root)
  @sum = 0

  dfs(root)
end

def dfs(node)
  return unless node

  dfs(node.right)

  @sum += node.val
  node.val = @sum

  dfs(node.left)

  node
end
