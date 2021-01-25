# frozen_string_literal: true

# @param {String} s
# @return {String}
def to_goat_latin(s)
  s.split.map.with_index do |word, i|
    word = word[1..-1] + word[0] unless /^[aAeEiIoOuU]/.match?(word)

    word + 'ma' + 'a' * (i + 1)
  end.join(' ')
end
