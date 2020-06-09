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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  dfs(root, k)
end

private def dfs(node, k, values = [])
  return false if node.nil?
  return true if values.include?(k - node.val)

  values << node.val

  dfs(node.left, k, values) || dfs(node.right, k, values)
end
