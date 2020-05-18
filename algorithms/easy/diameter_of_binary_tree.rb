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
def diameter_of_binary_tree(root)
  @res = 0
  @m = {}
  max_depth(root)
  @res
end

private def max_depth(node)
  return 0 if node.nil?
  return @m[node] if @m.key?(node)

  left = max_depth(node.left)
  right = max_depth(node.right)

  @res = [@res, left + right].max

  @m[node] = [left, right].max + 1
end
