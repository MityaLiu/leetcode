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
class TreeNode
  attr_accessor :sum
end

def find_tilt(root)
  return 0 if root.nil?

  node_tilt(root) + find_tilt(root.left) + find_tilt(root.right)
end

private def node_tilt(node)
  (node_sum(node.left) - node_sum(node.right)).abs
end

private def node_sum(node)
  return 0 if node.nil?
  return node.sum if node.sum

  node.sum = node.val + node_sum(node.left) + node_sum(node.right)
end
