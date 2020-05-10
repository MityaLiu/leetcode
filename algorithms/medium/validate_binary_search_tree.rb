# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
  prev = nil
  curr = root

  while curr
    if !curr.left # if left node absent
      return false if prev && prev.val >= curr.val

      prev = curr
      curr = curr.right
    else
      node = curr.left
      node = node.right while node.right && node.right != curr
      if !node.right
        node.right = curr
        curr = curr.left
      else
        return false if prev && prev.val >= curr.val

        prev = curr
        node.right = nil
        curr = curr.right
      end
    end
  end

  true
end
