# frozen_string_literal: true

# @param {Integer} n
# @param {Integer} k
# @param {Integer} w
# @return {Float}
def new21_game(n, k, w)
  return 1.0 if k == 0 || n >= k + w

  dp = Array.new(n + w + 1, 0.0)

  dp[0] = 1.0

  s = 1.0
  res = 0.0

  (1..n).each do |i|
    dp[i] = s / w
    if i < k
      s += dp[i]
    else
      res += dp[i]
    end
    if i - w >= 0
      s -= dp[i - w]
    end
  end

  res
end
