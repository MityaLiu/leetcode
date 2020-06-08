# frozen_string_literal: true

# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def fair_candy_swap(a, b)
  diff = (a.sum - b.sum) / 2

  ans = a.find { |candy| b.include?(candy - diff) }

  [ans, ans - diff]
end
