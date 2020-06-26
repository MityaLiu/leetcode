# frozen_string_literal: true

# @param {Integer[]} arr
# @param {Integer[][]} queries
# @return {Integer[]}
def xor_queries(arr, queries)
  tmp = 0

  dp = [0] + Array.new(arr.length) { |i| tmp ^= arr[i] }

  queries.map { |li, ri| dp[ri + 1] ^ dp[li] }
end
