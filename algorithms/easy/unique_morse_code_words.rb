# frozen_string_literal: true

MORSE = [
  '.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-',
  '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-',
  '.--', '-..-', '-.--', '--..'
].freeze

# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  words.map { |w| translate(w) }.uniq.count
end

private def translate(word)
  word.chars.map { |c| MORSE[c.ord - 'a'.ord] }.join
end
