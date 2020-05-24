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
# @return {int}
def max_depth(root)
  bfs(root)
end

private def dfs(node)
  return 0 if node.nil?
  return 1 if node.children.empty?

  1 + node.children.map { |c| dfs(c) }.max
end

private def bfs(root)
  return 0 if root.nil?

  depth = 0
  queue = [root]

  until queue.empty?
    queue.size.times do
      node = queue.shift

      unless node.children.empty?
        queue += node.children
      end
    end

    depth += 1
  end

  depth
end
