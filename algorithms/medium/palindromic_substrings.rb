# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def count_substrings(s)
  n = s.length
  result = n

  n.downto(2).each do |size|
    (0..n - size).each do |i|
      substring = s[i..i + size - 1]
      result += 1 if substring == substring.reverse
    end
  end

  result
end
