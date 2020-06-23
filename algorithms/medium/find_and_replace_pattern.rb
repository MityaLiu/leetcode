# frozen_string_literal: true

# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  words.select { |word| matches?(word, pattern) }
end

private def matches?(word, pattern)
  h = {}

  word.each_char.with_index do |c, i|
    if h[c]
      return false if h[c] != pattern[i]
    else
      return false if h.key(pattern[i])

      h[c] = pattern[i]
    end
  end

  true
end
