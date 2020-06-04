# frozen_string_literal: true

ALPHABET = {
  0  => '0',
  1  => '1',
  2  => '2',
  3  => '3',
  4  => '4',
  5  => '5',
  6  => '6',
  7  => '7',
  8  => '8',
  9  => '9',
  10 => 'a',
  11 => 'b',
  12 => 'c',
  13 => 'd',
  14 => 'e',
  15 => 'f'
}.freeze

# @param {Integer} num
# @return {String}
def to_hex(num)
  to_16(num >= 0 ? num : 4294967296 + num)
end

private def to_16(num)
  return '0' if num.zero?

  digits = Math.log(num, 16).floor
  result = ''

  digits.downto(0) do |pow|
    result += ALPHABET[num / 16**pow]
    num %= 16**pow
  end

  result
end
