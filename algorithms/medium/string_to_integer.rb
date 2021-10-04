# frozen_string_literal: true

# @param {String} str
# @return {Integer}
DICTIONARY = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}.freeze

def my_atoi(str)
  str.strip!
  return 0 unless /^([+-]?[0-9]+)/.match?(str)

  is_negative = str[0] == '-'
  str = str[1..-1] if ['-', '+'].include?(str[0])

  undesired_char = str.scan(/[^\d]/).first
  str = str.split(undesired_char)[0]
  len = str.length

  number = 0

  str.each_char.with_index do |c, i|
    number += (10**(len - i - 1)) * DICTIONARY[c]
  end

  number *= -1 if is_negative

  number >= 0 ? [number, 2147483647].min : [-2147483648, number].max
end
