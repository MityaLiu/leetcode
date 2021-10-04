# frozen_string_literal: true

# @param {String} s
# @return {Integer}
def title_to_number(s)
  alp = {}
  'A'.upto('Z').with_index { |c, i| alp[c] = i + 1 }
  q = 0
  s.reverse.each_char.with_index do |c, i|
    q += alp[c] * (26**i)
  end
  q
end
