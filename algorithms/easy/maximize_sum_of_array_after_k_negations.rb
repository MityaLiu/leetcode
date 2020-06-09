# frozen_string_literal: true

# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def largest_sum_after_k_negations(a, k)
  k.times do
    min = a.min
    index = a.index(min)
    a[index] = -a.min
  end

  a.sum
end
