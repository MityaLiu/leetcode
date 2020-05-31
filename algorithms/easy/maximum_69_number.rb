# frozen_string_literal: true

# @param {Integer} num
# @return {Integer}
def maximum69_number(num)
  s = num.to_s

  index = s.index('6')

  return num if index.nil?

  s[index] = '9'

  s.to_i
end
