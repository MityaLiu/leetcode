# frozen_string_literal: true

# @param {Integer[]} cost
# @param {Integer} target
# @return {String}
def largest_number(cost, target)
  @memo = { 0 => '' }
  dfs(cost, target)
end

private def dfs(cost, target)
  return @memo[target] if @memo.key?(target)

  s = ''

  9.times do |i|
    next unless cost[i] <= target

    t = dfs(cost, target - cost[i])
    if t != '0'
      t = "#{i + 1}#{t}"
      s = t if s.length <= t.length && s < t
    end
  end

  s = '0' if s.empty?

  @memo[target] = s
end
