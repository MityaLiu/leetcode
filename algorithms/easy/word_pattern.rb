# frozen_string_literal: true

# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
  stra = str.split(' ')

  return false if pattern.size != stra.size

  h = {}

  pattern.each_char.with_index do |c, i|
    if h.key?(c)
      return false if h[c] != stra[i]
    else
      return false if h.value?(stra[i])

      h[c] = stra[i]
    end
  end

  true
end
