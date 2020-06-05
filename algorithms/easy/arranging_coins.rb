# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  result = 0
  i = 1

  while n >= i
    result += 1
    n -= i
    i += 1
  end

  result
end
