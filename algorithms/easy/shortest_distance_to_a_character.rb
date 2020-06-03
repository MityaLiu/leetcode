# frozen_string_literal: true

# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  s.chars.map.with_index do |q, i|
    next 0 if q == c

    left = s[0..i].reverse.index(c)
    right = s[i..-1].index(c)

    if left && right
      [left, right].min
    elsif left
      left
    elsif right
      right
    else
      -1
    end
  end
end
