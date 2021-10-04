# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  h = Hash.new(0)

  s.each_char { |c| h[c] += 1 }
  even = h.values.sum { |v| v - (v % 2) }
  odd = h.values.any?(&:odd?)

  even + (odd ? 1 : 0)
end
