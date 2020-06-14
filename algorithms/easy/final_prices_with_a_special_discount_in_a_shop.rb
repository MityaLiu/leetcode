# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  prices.map.with_index do |price, i|
    discount = prices[i + 1..-1].find { |v| v <= price } || 0
    price - discount
  end
end
