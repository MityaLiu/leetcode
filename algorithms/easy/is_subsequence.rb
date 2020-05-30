# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  reduced_t = (t.chars - (t.chars - s.chars))

  size = s.size

  s.each_char.with_index do |c, i|
    j = reduced_t.index(c)

    return false unless j

    reduced_t = reduced_t[j + 1..-1]

    return false if reduced_t.empty? && i < size - 1
  end

  true
end
