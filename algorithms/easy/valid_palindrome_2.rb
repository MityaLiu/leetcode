# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  s = s.chars

  until s.empty?
    sl = s.shift
    sr = s.pop

    if sl != sr
      return palindrome?([sl] + s) || palindrome?(s + [sr])
    end
  end

  true
end

private def palindrome?(s)
  s == s.reverse
end
