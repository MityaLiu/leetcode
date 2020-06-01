# frozen_string_literal: true

# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  good_words = words.select { |word| can_be_formed?(word, chars) }
  good_words.sum(&:length)
end

private def can_be_formed?(word, chars)
  alphabet = chars.dup

  word.chars.all? do |c|
    index = alphabet.index(c)
    break false unless index

    alphabet.slice!(index)
    true
  end
end
