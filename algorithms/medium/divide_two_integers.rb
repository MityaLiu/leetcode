# frozen_string_literal: true

# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  sign = (dividend < 0) ^ (divisor < 0) ? -1 : 1

  dividend = dividend.abs
  divisor = divisor.abs

  quotient = 0
  temp = 0

  31.downto(0).each do |i|
    if temp + (divisor << i) <= dividend
      temp += divisor << i
      quotient |= 1 << i
    end
  end

  result = sign * quotient

  return 2147483647 if result > 2147483647
  return -2147483648 if result < -2147483648

  result
end
