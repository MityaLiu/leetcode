# frozen_string_literal: true

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  coins.sort!
  @res = Float::INFINITY

  dfs(coins, coins.size - 1, amount, 0)

  @res == Float::INFINITY ? -1 : @res
end

private def dfs(coins, start, target, cur)
  return if start < 0

  if (target % coins[start]).zero?
    @res = [@res, cur + target / coins[start]].min
    return
  end

  (target / coins[start]).downto(0) do |i|
    break if cur + i >= @res - 1

    dfs(coins, start - 1, target - i * coins[start], cur + i)
  end
end
