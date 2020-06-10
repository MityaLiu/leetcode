# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
  h = Hash.new(0)

  nums.each { |n| h[n] += 1 }

  degree = h.max_by(&:last)&.last

  h.select! { |_k, v| v == degree }

  h.keys.map { |k| nums.rindex(k) - nums.index(k) + 1 }.min
end
