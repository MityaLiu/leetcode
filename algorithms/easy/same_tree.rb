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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  dfs(p, q)
end

private def dfs(p, q)
  case [p, q].compact.size
  when 0 then return true
  when 1 then return false
  else
    p.val == q.val && dfs(p.left, q.left) && dfs(p.right, q.right)
  end
end
