# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  prices.each_cons(2).sum { |a, b| [b - a, 0].max }
end
