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
def pseudo_palindromic_paths(root)
  dfs(root)
end

private def dfs(node, previous = [])
  return 0 unless node

  previous << node.val

  if leaf?(node)
    return palendrom?(previous) ? 1 : 0
  end

  dfs(node.left, previous.dup) + dfs(node.right, previous.dup)
end

private def leaf?(node)
  node && node.left.nil? && node.right.nil?
end

private def palendrom?(values)
  return false if values.empty?

  h = Hash.new(0)
  values.each { |v| h[v] += 1 }

  odd_count = h.values.count(&:odd?)

  (values.size.even? && odd_count.zero?) || (values.size.odd? && odd_count == 1)
end
