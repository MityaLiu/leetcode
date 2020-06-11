# frozen_string_literal: true

# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
  h = Hash.new(0)

  deck.each { |card| h[card] += 1 }

  max_x = h.values.min

  return false if max_x < 2

  dividers = h.values.map { |v| v.gcd(max_x) }
  dividers.delete(1)
  x = dividers.min

  h.values.all? { |v| (v % x).zero? }
end
