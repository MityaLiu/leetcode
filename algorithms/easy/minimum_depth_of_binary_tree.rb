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
def min_depth(root)
  bfs(root)
end

private def dfs(node)
  return 0 if node.nil?
  return 1 + dfs(node.right) if node.left.nil?
  return 1 + dfs(node.left) if node.right.nil?

  1 + [dfs(node.left), dfs(node.right)].min
end

private def bfs(node)
  return 0 if node.nil?

  depth = 1
  queue = [node]

  until queue.empty?
    queue.size.times do
      n = queue.shift

      return depth if n.left.nil? && n.right.nil?

      queue << n.left if n.left
      queue << n.right if n.right
    end

    depth += 1
  end

  depth
end
