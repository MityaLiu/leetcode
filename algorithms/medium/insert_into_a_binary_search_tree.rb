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
# @param {Integer} val
# @return {TreeNode}
def insert_into_bst(root, val)
  dfs(root, val)
end

private def dfs(node, val)
  return TreeNode.new(val) unless node

  if val < node.val
    if node.left
      dfs(node.left, val)
    else
      node.left = TreeNode.new(val)
    end
  else
    if node.right
      dfs(node.right, val)
    else
      node.right = TreeNode.new(val)
    end
  end

  node
end
