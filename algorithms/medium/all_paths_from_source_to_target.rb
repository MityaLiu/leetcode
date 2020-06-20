# frozen_string_literal: true

# @param {Integer[][]} graph
# @return {Integer[][]}
def all_paths_source_target(graph)
  @result = []
  backtrack(graph)
  @result
end

private def backtrack(graph, i = 0, prev = [0])
  return if i >= graph.size

  @result << prev if i == graph.size - 1

  graph[i].each do |j|
    backtrack(graph, j, prev + [j])
  end
end
