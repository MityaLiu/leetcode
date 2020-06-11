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
# @param {Integer} x
# @param {Integer} y
# @return {Boolean}
def is_cousins(root, x, y)
  bfs(root, x, y)
end

private def bfs(node, x, y)
  queue = [[node, nil]]

  until queue.empty?
    parents = []

    queue.size.times do
      n, parent = queue.shift

      parents << parent if [x, y].include?(n.val)

      queue << [n.left, n] if n.left
      queue << [n.right, n] if n.right
    end

    return true if parents.uniq.size == 2
  end

  false
end
