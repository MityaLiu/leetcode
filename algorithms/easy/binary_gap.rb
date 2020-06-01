# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  str = n.to_s(2)
  max = 0
  one = 0

  until str.empty?
    str = str[one + 1..-1]

    one = str.index('1')
    break unless one

    max = one + 1 if max < one + 1
  end

  max
end
