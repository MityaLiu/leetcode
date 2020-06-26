# frozen_string_literal: true

class CombinationIterator
  attr_reader :permutations

  # :type characters: String
  # :type combination_length: Integer
  def initialize(characters, combination_length)
    @permutations = []
    backtrack(characters, combination_length)
  end

  private def backtrack(characters, combination_length, word = '')
    if combination_length.zero?
      @permutations << word
    else
      (0..characters.size - combination_length).each do |i|
        backtrack(characters[i + 1..-1], combination_length - 1, word + characters[i])
      end
    end
  end

  # :rtype: String
  def next
    permutations.shift
  end

  # :rtype: Boolean
  def has_next
    !permutations.empty?
  end
end

# Your CombinationIterator object will be instantiated and called as such:
# obj = CombinationIterator.new(characters, combination_length)
# param_1 = obj.next()
# param_2 = obj.has_next()
