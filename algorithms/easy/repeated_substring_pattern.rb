# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  size = s.size
  i = 1
  i += 1 until s[0...i] * (size / i) == s || i >= size

  i < size
end
