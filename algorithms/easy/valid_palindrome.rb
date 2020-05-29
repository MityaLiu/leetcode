# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  a = s.downcase.scan(/[a-z0-9]/)

  a == a.reverse
end
