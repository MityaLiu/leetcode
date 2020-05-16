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
# @param {Integer} n
# @return {TreeNode[]}
def generate_trees(n)
  return [] if n == 0

  generate_trees_dfs(0, n - 1)
end

private def generate_trees_dfs(left, right)
  return [nil] if left > right

  (left..right).each_with_object([]) do |split, result|
    ls = generate_trees_dfs(left, split - 1)
    rs = generate_trees_dfs(split + 1, right)

    ls.each do |l|
      rs.each do |r|
        result << TreeNode.new(split + 1, l, r)
      end
    end
  end
end
