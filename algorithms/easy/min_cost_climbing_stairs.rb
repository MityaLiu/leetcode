# frozen_string_literal: true

# @param {Integer[]} cost
# @return {Integer}
def _min_cost_climbing_stairs(cost, depth = 0)
  return 0 if cost.size < 2

  @a = [] if depth.zero?

  @a[depth] ||= [
    cost[0] + min_cost_climbing_stairs(cost[1..-1], depth + 1),
    cost[1] + min_cost_climbing_stairs(cost[2..-1], depth + 2)
  ].min
end

# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost, reset_hash = true)
  return 0 if cost.size < 2

  @h = {} if reset_hash # due to a bug in specs

  @h[cost.size] ||= [
    cost[0] + min_cost_climbing_stairs(cost[1..-1], false),
    cost[1] + min_cost_climbing_stairs(cost[2..-1], false)
  ].min
end
