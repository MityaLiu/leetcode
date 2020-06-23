# frozen_string_literal: true

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[][]}
def matrix_block_sum(mat, k)
  m = mat.size
  n = mat[0].size

  # NOTE: prefix sum can speed this up
  Array.new(m) do |j|
    Array.new(n) do |i|
      ([0, j - k].max..[j + k, m - 1].min).sum do |j1|
        mat[j1][[0, i - k].max..[i + k, n - 1].min].sum
      end
    end
  end
end
