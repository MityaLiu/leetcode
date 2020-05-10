# frozen_string_literal: true

require 'set'

# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}\
def find_ladders(begin_word, end_word, word_list)
  return [] unless word_list.any? { |w| w == end_word }

  @poss = {}
  @pats = {}
  (word_list + [begin_word]).each do |word|
    word.size.times do |i|
      key = word[0...i] + '*' + word[i + 1..-1]

      @pats[word] ||= []
      @pats[word] << key

      @poss[key] ||= []
      @poss[key] << word
    end
  end

  level = { end_word => Set.new }
  parents = {}

  while !level.empty? && !level[begin_word]

    next_level = {}

    level.each do |word, _|
      @pats[word].each do |pt|
        @poss[pt].each do |w|
          next if w == word
          next if parents.key?(w)

          next_level[w] ||= Set.new
          next_level[w] << word
        end
      end
    end

    level = next_level
    parents.merge!(level)
  end

  res = []
  queue = [[begin_word]]

  until queue.empty?
    words = queue.shift
    word = words.last

    if word == end_word
      res << words
    else
      parents[word]&.each { |n| queue << (words + [n]) }
    end
  end

  res
end
