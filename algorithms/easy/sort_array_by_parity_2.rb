# frozen_string_literal: true

# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity_ii(a)
  odd = a.select(&:odd?)
  even = a.select(&:even?)

  even.zip(odd).flatten
end
