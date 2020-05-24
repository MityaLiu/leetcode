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
def level_order(root)
  bfs(root)
end

private def bfs(node)
  return [] if node.nil?

  result = []
  queue = [node]
  depth = 0

  until queue.empty?
    result[depth] = []

    queue.size.times do
      n = queue.shift
      result[depth] << n.val

      queue += [n.left] if n.left
      queue += [n.right] if n.right
    end

    depth += 1
  end

  result
end
