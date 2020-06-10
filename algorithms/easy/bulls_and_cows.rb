# frozen_string_literal: true

# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  idxs = []

  secret.chars.each_with_index { |c, i| idxs << i if c == guess[i] }
  s = secret.chars.select.with_index { |_c, i| !idxs.include?(i) }
  g = guess.chars.select.with_index { |_c, i| !idxs.include?(i) }

  bulls = idxs.count
  cows = (s & g).sum { |v| [s.count(v), g.count(v)].min }

  "#{bulls}A#{cows}B"
end
