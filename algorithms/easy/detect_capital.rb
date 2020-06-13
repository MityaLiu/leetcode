# frozen_string_literal: true

# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  word.match?(/^[A-Z]+$/) || word.match?(/^[A-Z]{0,1}[a-z]+$/)
end
