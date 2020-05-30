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
# @return {TreeNode}
def invert_tree(root)
  dfs(root)
end

private def dfs(node)
  return if node.nil?

  node.left, node.right = node.right, node.left

  dfs(node.left)
  dfs(node.right)

  node
end

private def bfs(node)
  return if node.nil?

  queue = [node]

  until queue.empty?
    switch_children(queue)

    queue.size.times do
      n = queue.shift

      next if n.nil?

      queue << n.left if n.left
      queue << n.right if n.right
    end
  end

  node
end

private def switch_children(q)
  return if q.empty?

  q.each do |n|
    n.left, n.right = n.right, n.left
  end
end
