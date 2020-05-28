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
# @return {Integer[][]}
def level_order_bottom(root)
  bfs(root)
end

private def bfs(node)
  return [] if node.nil?

  queue = [node]
  result = []

  until queue.empty?
    result << queue.map(&:val)

    queue.size.times do
      n = queue.shift

      queue << n.left if n.left
      queue << n.right if n.right
    end
  end

  result.reverse
end
