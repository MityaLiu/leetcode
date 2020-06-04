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
# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}
def is_subtree(s, t)
  dfs(s, t)
end

private def dfs(node, t)
  return false unless node

  equal?(node, t) || dfs(node.left, t) || dfs(node.right, t)
end

private def equal?(node, t)
  case [node, t].compact.size
  when 0
    true
  when 1
    false
  else
    node.val == t.val && equal?(node.left, t.left) && equal?(node.right, t.right)
  end
end
