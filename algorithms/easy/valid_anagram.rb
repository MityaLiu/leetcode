# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  # s.chars.sort == t.chars.sort
  h = Hash.new(0)

  s.each_char { |c| h[c] += 1 }
  t.each_char { |c| h[c] -= 1 }

  h.values.all?(&:zero?)
end
