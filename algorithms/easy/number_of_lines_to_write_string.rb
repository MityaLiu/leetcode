# frozen_string_literal: true

ALPHABET = ('a'..'z').to_a.freeze

# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  widths_h = {}

  widths.each_with_index do |width, i|
    widths_h[ALPHABET[i]] = width
  end

  total = 0

  s.each_char do |c|
    remainder = 100 - (total % 100)

    total += remainder if remainder < widths_h[c]

    total += widths_h[c]
  end

  [(total.to_f / 100).ceil, total % 100]
end
