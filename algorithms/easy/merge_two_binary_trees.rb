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
# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
  merge(t1, t2)
end

private def merge(node1, node2)
  return node1 if node2.nil?
  return node2 if node1.nil?

  node1.val += node2.val

  node1.left = merge(node1.left, node2.left)
  node1.right = merge(node1.right, node2.right)

  node1
end
