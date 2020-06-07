# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  n.to_s(2).chars.map { |c| c == '1' ? '0' : '1' }.join.to_i(2)
end
