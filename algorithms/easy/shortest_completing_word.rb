# frozen_string_literal: true

# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  alphabet = license_plate.downcase.scan(/[a-zA-Z]/)

  words.select { |w| match?(w.downcase.dup, alphabet) }.min_by(&:length)
end

private def match?(w, alphabet)
  alphabet.all? do |c|
    w.index(c).tap do |index|
      w.slice!(index) if index
    end
  end
end
