# frozen_string_literal: true

# @param {String} s
# @return {Integer[][]}
def large_group_positions(s)
  size = s.size
  s = s.chars

  result = []
  i = 0

  while i < size
    j = s[i + 1..-1].index { |v| v != s[i] } || size - i - 1

    result << [i, i + j] if j && j >= 2

    i += j + 1
  end

  result
end
