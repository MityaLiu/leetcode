# frozen_string_literal: true

VOWELS = %w[a A e E i I o O u U].freeze

# @param {String} s
# @return {String}
def reverse_vowels(s)
  q = []

  s.each_char do |c|
    q << c if VOWELS.include?(c)
  end

  s.each_char.with_index do |c, i|
    s[i] = q.pop if VOWELS.include?(c)
  end

  s
end
