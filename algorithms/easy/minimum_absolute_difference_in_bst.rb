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
def min_diff_in_bst(root)
  @min = nil
  @prev = -Float::INFINITY
  dfs(root)
  @min
end

private def dfs(node)
  unless node.nil?
    dfs(node.left)
    dist = node.val - @prev
    @min = dist if @min.nil? || dist < @min
    @prev = node.val
    dfs(node.right)
  end
end
