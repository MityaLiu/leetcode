# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def max_score(s)
  s.chars.map.with_index do |_c, i|
    next 0 if i.zero?

    s[0...i].count('0') + s[i..-1].count('1')
  end.max
end
