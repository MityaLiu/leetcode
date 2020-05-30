# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  (s.chars - t.chars)[0] || solw_find(s, t)
end

private def solw_find(s, t)
  h = Hash.new(0)

  t.each_char { |c| h[c] += 1 }
  s.each_char { |c| h[c] -= 1 }

  h.key(1)
end
