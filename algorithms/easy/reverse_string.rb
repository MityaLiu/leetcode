# frozen_string_literal: true

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  size = s.size

  (0..(size / 2) - 1).each do |i|
    s[i], s[size - 1 - i] = s[size - 1 - i], s[i]
  end

  s
end
