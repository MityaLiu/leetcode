# frozen_string_literal: true

# @param {Integer} num
# @return {Integer}
def find_complement(num)
  num.to_s(2).chars.map { |b| b.to_i ^ 0x01 }.join.to_i(2)
end
