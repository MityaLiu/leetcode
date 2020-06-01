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
def deepest_leaves_sum(root)
  bfs(root)
end

private def bfs(node)
  queue = [node]
  queue_backup = []

  until queue.empty?
    queue_backup = queue.dup

    queue.size.times do
      n = queue.shift

      queue << n.left if n.left
      queue << n.right if n.right
    end
  end

  queue_backup.sum(&:val)
end
