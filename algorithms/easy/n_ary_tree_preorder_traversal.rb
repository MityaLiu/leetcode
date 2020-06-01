# frozen_string_literal: true

# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[int]}
def preorder(root)
  dfs(root)
end

private def dfs(node)
  return [] unless node
  return [node.val] if node.children.compact.empty?

  [node.val] + node.children.compact.map { |n| dfs(n) }.reduce(:+)
end
