# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def count_binary_substrings(s)
  count = 0

  s.size.times do |i|
    next unless s[i] != s[i + 1]

    radius = 0

    while (radius...s.size - 1 - radius).cover?(i) && s[i] == s[i - radius] && s[i + 1] == s[i + 1 + radius]
      radius += 1
      count += 1
    end
  end

  count
end
