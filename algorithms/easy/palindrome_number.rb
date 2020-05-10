# frozen_string_literal: true

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?

  s = x.to_s
  s == s.reverse
end
