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
class FindElements
  attr_reader :tree, :values

  # :type root: TreeNode
  def initialize(root)
    root.val = 0
    @values = {}
    @tree = fix_tree(root)
  end

  # :type target: Integer
  # :rtype: Boolean
  def find(target)
    !values[target].nil?
  end

  # :type root: TreeNode
  private def fix_tree(node)
    return unless node

    if node.left
      node.left.val = node.val * 2 + 1
      fix_tree(node.left)
    end

    if node.right
      node.right.val = node.val * 2 + 2
      fix_tree(node.right)
    end

    @values[node.left.val] = 0 if node.left
    @values[node.right.val] = 1 if node.right

    node
  end
end

# Your FindElements object will be instantiated and called as such:
# obj = FindElements.new(root)
# param_1 = obj.find(target)
