# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  prices.each_with_index.inject(0) do |max, (price, i)|
    break max if i >= prices.size - 1

    diff = prices[i + 1..-1].max - price
    [max, diff].max
  end
end
