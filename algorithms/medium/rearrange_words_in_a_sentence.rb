# frozen_string_literal: true

# @param {String} text
# @return {String}
def arrange_words(text)
  text.downcase.split.sort_by(&:length).join(' ').capitalize
end
