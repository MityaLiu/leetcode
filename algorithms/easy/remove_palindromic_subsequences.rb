# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
  return 0 if s.empty?
  return 1 if s == s.reverse

  2
end
