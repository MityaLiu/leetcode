# frozen_string_literal: true

# @param {Integer} numerator
# @param {Integer} denominator
# @return {String}
def fraction_to_decimal(numerator, denominator)
  return '0' if numerator.zero?

  sign = (numerator < 0) ^ (denominator < 0) ? '-' : ''
  numerator = numerator.abs
  denominator = denominator.abs
  quotient = numerator / denominator
  remainder = numerator % denominator
  quotient_s = sign + quotient.to_s

  if remainder.zero?
    quotient_s
  else
    quotient_s + '.' + remainder_to_s(remainder, denominator)
  end
end

private def remainder_to_s(remainder, denominator)
  s = ''
  pos = 0
  m = {}

  until remainder.zero?
    if m.key?(remainder)
      s.insert(m[remainder], '(')
      s += ')'
      return s
    end

    m[remainder] = pos
    s += ((remainder * 10) / denominator).to_s
    remainder = (remainder * 10) % denominator
    pos += 1
  end

  s
end
