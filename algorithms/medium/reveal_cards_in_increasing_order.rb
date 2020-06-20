# frozen_string_literal: true

# @param {Integer[]} deck
# @return {Integer[]}
def deck_revealed_increasing(deck)
  deck.sort!

  result = [deck.pop]

  until deck.empty?
    result.unshift(result.pop)
    result.unshift(deck.pop)
  end

  result
end
