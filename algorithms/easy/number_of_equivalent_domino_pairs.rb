# frozen_string_literal: true

# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
  size = dominoes.size

  h = Hash.new(0)

  arr = dominoes.map { |d| d.sort.join('-') }

  arr.each { |d| h[d] += 1 }

  arr.each_with_index.sum do |d, i|
    next 0 if i == size - 1

    h[d] -= 1

    h[d]
  end
end
