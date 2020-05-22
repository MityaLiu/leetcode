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
# @return {Integer}
def kth_smallest(root, k)
  dfs(root, k, 0)[1]
end

private def dfs(node, kth, count)
  return [count, nil] if node.nil?

  count, value = dfs(node.left, kth, count)
  return [count, value] if count == kth

  count += 1
  value = node.val
  return [count, value] if count == kth

  dfs(node.right, kth, count)
end
