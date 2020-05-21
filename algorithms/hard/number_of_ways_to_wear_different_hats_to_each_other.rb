# frozen_string_literal: true

# @param {Integer[][]} hats
# @return {Integer}
def number_ways(hats)
  dfs(hats)
end

private def dfs(hats, depth = 0, used = [])
  remaining_hats = hats[depth] - used

  return 0 if remaining_hats.empty?
  return remaining_hats.count if depth == hats.size - 1

  remaining_hats.sum { |hat| dfs(hats, depth + 1, used + [hat]) }
end
