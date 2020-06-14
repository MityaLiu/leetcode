# frozen_string_literal: true

# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  alphabet = {}

  order.each_char.with_index { |c, i| alphabet[c] = i }

  words.each_cons(2).all? do |w1, w2|
    l?(alphabet, w1, w2)
  end
end

private def l?(alphabet, w1, w2)
  return true if w1.size < w2.size && w2.start_with?(w1)
  return false if w1.size > w2.size && w1.start_with?(w2)

  w2.each_char.with_index do |c, i|
    next if w1[i] == c

    return alphabet[w1[i]] < alphabet[c]
  end
end
