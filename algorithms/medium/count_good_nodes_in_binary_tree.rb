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
def good_nodes(root)
  dfs(root, root.val)
end

private def dfs(node, prev_val)
  return 0 if node.nil?

  new_val = [node.val, prev_val].max

  (node.val < prev_val ? 0 : 1) + dfs(node.left, new_val) + dfs(node.right, new_val)
end
