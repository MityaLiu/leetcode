# frozen_string_literal: true

KEYBOARD = [
  'qwertyuiop'.chars,
  'asdfghjkl'.chars,
  'zxcvbnm'.chars
].freeze

# @param {String[]} words
# @return {String[]}
def find_words(words)
  words.select do |word|
    KEYBOARD.any? { |row| (word.downcase.chars - row).empty? }
  end
end
