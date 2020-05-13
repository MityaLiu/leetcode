# frozen_string_literal: true

# @param {Integer} n
# @param {Integer[][]} edges
# @param {Boolean[]} has_apple
# @return {Integer}
def min_time(_n, edges, has_apple)
  apples = has_apple.each_index.select { |i| has_apple[i] }
  tree = edges.map { |k, v| [v, k] }.to_h

  apples.each_with_object([]) do |apple, nodes|
    while apple != 0
      nodes << apple
      apple = tree[apple]
    end
  end.uniq.count * 2
end
