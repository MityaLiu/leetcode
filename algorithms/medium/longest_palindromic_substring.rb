# frozen_string_literal: true

# @param {String} s
# @return {String}
def longest_palindrome(s)
  len = s.length
  return s if len <= 1 || s == s.reverse

  start_index = -1
  max_lenght = 1
  mx = Array.new(len) { Array.new(len) }

  (0...len).each do |i|
    mx[i][i] = true
    start_index = i
  end

  (0...len - 1).each do |i|
    if s[i] == s[i + 1]
      mx[i][i + 1] = true
      max_lenght = 2
      start_index = i
    else
      mx[i][i + 1] = false
    end
  end

  (3..len).each do |k|
    (0...(len - k + 1)).each do |i|
      j = i + k - 1
      if s[i] == s[j] && mx[i + 1][j - 1]
        mx[i][j] = true
        if k > max_lenght
          max_lenght = k
          start_index = i
        end
      else
        mx[i][j] = false
      end
    end
  end
  s[start_index, max_lenght]
end
