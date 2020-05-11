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
# @param {TreeNode} t
# @return {String}
def tree2str(t)
  serialize(t)
end

private def serialize(root)
  return '' if root.nil?

  if root.right
    "#{root.val}(#{serialize(root.left)})(#{serialize(root.right)})"
  elsif root.left
    "#{root.val}(#{serialize(root.left)})"
  else
    root.val.to_s
  end
end
