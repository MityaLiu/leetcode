# frozen_string_literal: true

# @param {Integer} x
# @return {Integer}
def reverse(x)
  negative = x.negative?
  result = x.to_s
  result = result[1..-1] if negative
  result = result.reverse.to_i
  result *= -1 if negative

  result > 2147483647 || result < -2147483648 ? 0 : result
end
