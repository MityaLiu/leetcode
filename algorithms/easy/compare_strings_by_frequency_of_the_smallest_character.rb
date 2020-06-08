# frozen_string_literal: true

# @param {String[]} queries
# @param {String[]} words
# @return {Integer[]}
def num_smaller_by_frequency(queries, words)
  frequencies = words.map { |word| word.count(word.chars.min) }

  queries.map do |query|
    f = query.count(query.chars.min)
    frequencies.count { |frequency| f < frequency }
  end
end
