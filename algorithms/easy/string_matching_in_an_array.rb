# frozen_string_literal: true

# @param {String[]} words
# @return {String[]}
def string_matching(words)
  words.select.with_index { |word, i| words.each_with_index.any? { |w, j| i != j && w.include?(word) } }
end
