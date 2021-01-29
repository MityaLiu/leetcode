# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
  h = Hash.new(0)

  s.each_char { |c| h[c] += 1 }
  t.each_char { |c| h[c] -= 1 }

  h.values.sum(&:abs) / 2
end
