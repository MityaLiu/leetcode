# frozen_string_literal: true

# @param {Integer[]} queries
# @param {Integer} m
# @return {Integer[]}
def process_queries(queries, m)
  permutation = (1..m).to_a

  queries.map do |query|
    permutation.index(query).tap do |i|
      permutation.delete_at(i)
      permutation.unshift(query)
    end
  end
end
