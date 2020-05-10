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
# @return {TreeNode[]}
def find_duplicate_subtrees(root)
  @counts = Hash.new(0)
  @result = []
  serialize(root)
  @result
end

private def serialize(root)
  return '#' if root.nil?

  "#{root.val},#{serialize(root.left)},#{serialize(root.right)}".hash.tap do |key|
    @counts[key] += 1
    @result << root if @counts[key] == 2
  end
end
