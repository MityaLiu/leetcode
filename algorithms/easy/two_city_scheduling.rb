# frozen_string_literal: true

# @param {Integer[][]} costs
# @return {Integer}
def two_city_sched_cost(costs)
  n = costs.size / 2
  a = []
  b = []

  d = costs.map.with_index { |c, i| [i, c.reduce(:-).abs] }.sort_by { |_k, v| -v }

  d.each do |i, _v|
    if a.size < n && b.size < n
      if costs[i][0] > costs[i][1]
        b << costs[i][1]
      else
        a << costs[i][0]
      end
    elsif b.size < n
      b << costs[i][1]
    else
      a << costs[i][0]
    end
  end

  a.sum + b.sum
end
