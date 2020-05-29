# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  return false if s.length != t.length

  h = {}

  s.each_char.with_index do |c, i|
    if h.key?(c)
      return false if h[c] != t[i]
    else
      return false if h.value?(t[i])

      h[c] = t[i]
    end
  end

  true
end
