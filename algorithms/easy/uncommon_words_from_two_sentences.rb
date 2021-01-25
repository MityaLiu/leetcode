# frozen_string_literal: true

# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
  arr = a.split + b.split
  uniq = arr.uniq
  uniq.select { |w| arr.count(w) == 1 }
end
