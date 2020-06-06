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
# @return {Float[]}
def average_of_levels(root)
  bfs(root)
end

private def bfs(node)
  queue = [node]
  result = []

  until queue.empty?
    result << queue.map(&:val).sum.to_f / queue.size

    queue.size.times do
      n = queue.shift

      queue << n.left if n.left
      queue << n.right if n.right
    end
  end

  result
end
