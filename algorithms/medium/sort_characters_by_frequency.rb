# frozen_string_literal: true

# @param {String} s
# @return {String}
def frequency_sort(s)
  h = Hash.new(0)

  s.each_char { |c| h[c] += 1 }

  h.sort_by { |_k, v| v }.collect { |k, v| k * v }.join.reverse
end
