# frozen_string_literal: true

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
def k_weakest_rows(mat, k)
  strength = []

  mat.each_with_index do |v, i|
    strength << [v.sum, i]
  end

  strength.sort.first(k).map(&:last)
end
