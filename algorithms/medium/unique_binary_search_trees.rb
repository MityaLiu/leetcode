# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def num_trees(n)
  dp = Array.new(n + 1, 1)

  (2..n).each do |bound|
    dp[bound] = (1..bound).map { |split| dp[split - 1] * dp[bound - split] }.sum
  end

  dp[n]
end
