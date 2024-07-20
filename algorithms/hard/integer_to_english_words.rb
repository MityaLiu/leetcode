# frozen_string_literal: true

DICTIONARY = {
  1  => 'One',
  2  => 'Two',
  3  => 'Three',
  4  => 'Four',
  5  => 'Five',
  6  => 'Six',
  7  => 'Seven',
  8  => 'Eight',
  9  => 'Nine',
  10 => 'Ten',
  11 => 'Eleven',
  12 => 'Twelve',
  13 => 'Thirteen',
  14 => 'Fourteen',
  15 => 'Fifteen',
  16 => 'Sixteen',
  17 => 'Seventeen',
  18 => 'Eighteen',
  19 => 'Nineteen',
  20 => 'Twenty',
  30 => 'Thirty',
  40 => 'Forty',
  50 => 'Fifty',
  60 => 'Sixty',
  70 => 'Seventy',
  80 => 'Eighty',
  90 => 'Ninety'
}.freeze

BN = {
  'Sextillion'  => 10**21,
  'Quintillion' => 10**18,
  'Quadrillion' => 10**15,
  'Trillion'    => 10**12,
  'Billion'     => 10**9,
  'Million'     => 10**6,
  'Thousand'    => 10**3
}.freeze

# @param {Integer} num
# @return {String}
def number_to_words(num)
  return 'Zero' if num.zero?

  r = split(num).each_with_object([]) do |(k, v), result|
    if v > 0
      result << "#{number_to_words_3(v)} #{k}"
    end
  end

  r << number_to_words_3(num % 1000)

  r.reject(&:empty?).join(' ')
end

private def number_to_words_3(num)
  a = num / 100
  b = num % 100
  c = 0

  if b > 20
    c = b % 10
    b -= c
  end

  result = ''

  if a > 0
    result += "#{DICTIONARY[a]} Hundred"
  end

  if b > 0
    result = result.empty? ? DICTIONARY[b] : [result, DICTIONARY[b]].join(' ')
  end

  if c > 0
    result = result.empty? ? DICTIONARY[c] : [result, DICTIONARY[c]].join(' ')
  end

  result
end

private def split(num)
  BN.each_with_object({}) do |(k, v), result|
    result[k] = num / v
    num %= v
  end
end
