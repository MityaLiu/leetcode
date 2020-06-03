# frozen_string_literal: true

# @param {String} s
# @return {String[]}
def letter_case_permutation(s)
  backtrack(s)
end

def backtrack(s, i = 0, result = [])
  if i == s.length
    result << s.dup
    return
  end

  backtrack(s, i + 1, result)

  if /[a-zA-Z]/.match?(s[i])
    s[i] = s[i].swapcase
    backtrack(s, i + 1, result)
  end

  result
end
