# frozen_string_literal: true

# @param {String[]} words
# @return {String}
def longest_word(words)
  trie = {}
  words.sort!

  words.each { |word| insert(word, 0, word.size, trie) }

  w = slect_deepest(trie, words)
  max = w.map(&:length).max
  w.find { |w1| w1.length == max }
end

private def insert(word, right, size, trie)
  return if right >= size

  s = word[0..right]

  if trie.key?(s)
    insert(word, right + 1, size, trie[s])
  elsif right + 1 == size
    trie[s] = {}
  end
end

private def deepest?(trie, word)
  prev = ''
  t = trie.dup
  word.each_char do |c|
    prev += c
    return false unless t.key?(prev)

    t = t[prev]
  end
  t.empty?
end

private def slect_deepest(trie, words)
  words.select { |word| deepest?(trie, word) }
end
