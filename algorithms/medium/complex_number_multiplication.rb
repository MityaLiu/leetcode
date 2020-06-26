# frozen_string_literal: true

# @param {String} a
# @param {String} b
# @return {String}
def complex_number_multiply(a, b)
  a1, a2 = a.split('+').map(&:to_i)
  b1, b2 = b.split('+').map(&:to_i)

  c1 = a1 * b1 - a2 * b2
  c2 = a1 * b2 + a2 * b1

  "#{c1}+#{c2}i"
end
