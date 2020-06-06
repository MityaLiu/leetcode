# frozen_string_literal: true

# @param {Integer[]} a
# @param {Integer[][]} queries
# @return {Integer[]}
def sum_even_after_queries(a, queries)
  sum = a.sum { |v| v.even? ? v : 0 }

  queries.map do |val, index|
    a[index] += val

    if a[index].even?
      sum += val.even? ? val : a[index]
    elsif val.odd?
      sum -= a[index] - val
    else
      sum
    end
  end
end
