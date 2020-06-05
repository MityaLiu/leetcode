# frozen_string_literal: true

# @param {String[]} a
# @return {Integer}
def num_special_equiv_groups(a)
  a.map { |s| transform(s) }.uniq.size
end

# Splits a string into odd and even characters by index.
# Sorts each character array and combines them into string.
private def transform(s)
  s.chars.partition.with_index { |_, i| i.odd? }.map(&:sort).join
end
