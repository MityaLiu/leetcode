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
# @return {Boolean}
def is_symmetric(root)
  bfs(root)
end

private def bfs(node)
  queue = [node]

  until queue.compact.empty?
    return false unless symmetric?(queue)

    queue.size.times do
      n = queue.shift

      if n
        queue << n.left
        queue << n.right
      end
    end
  end

  true
end

private def symmetric?(nodes)
  a = nodes.map { |n| n&.val }
  a == a.reverse
end
