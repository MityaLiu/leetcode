# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  return 0 if s.size == 1

  h = Hash.new(0)
  s.chars.each { |c| h[c] += 1 }
  o = h.find { |_k, v| v == 1 }

  (o && s.index(o[0])) || -1
end
