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
def max_level_sum(root)
  bfs(root)
end

private def bfs(node)
  q = [node]
  result = [node.val]

  until q.empty?
    result << q.sum(&:val)

    q.size.times do
      n = q.shift

      q << n.left if n.left
      q << n.right if n.right
    end
  end

  result.index(result.max)
end
