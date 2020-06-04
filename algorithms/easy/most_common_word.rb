# frozen_string_literal: true

# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  words = paragraph.downcase.scan(/[a-zA-Z]+/) - banned

  return '' if words.empty?

  h = Hash.new(0)

  words.each { |word| h[word] += 1 }

  h.max_by { |_k, v| v }[0]
end
