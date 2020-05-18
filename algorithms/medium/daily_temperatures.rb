# frozen_string_literal: true

# @param {Integer[]} t
# @return {Integer[]}
def daily_temperatures(t)
  result = Array.new(t.size, 0)

  t.each_with_object([]).with_index do |(temperature, stack), i|
    until stack.empty? || stack.last[1] >= temperature
      previous_index = stack.pop[0]
      result[previous_index] = i - previous_index
    end

    stack << [i, temperature]
  end

  result
end
