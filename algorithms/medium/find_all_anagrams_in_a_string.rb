# frozen_string_literal: true

# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
  length = p.size

  h = count_letters(p)

  (0..s.size - length).each_with_object([]) do |i, result|
    if anagram?(h, s[i...i + length])
      result << i
    end
  end
end

private def anagram?(h, a)
  h.all? { |k, v| a.count(k) == v }
end

private def count_letters(a)
  a.chars.each_with_object(Hash.new(0)) do |c, result|
    result[c] += 1
  end
end
