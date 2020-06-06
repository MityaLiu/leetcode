# frozen_string_literal: true

ALPHABET = {
  '0' => '0',
  '1' => '1',
  '2' => '5',
  '5' => '2',
  '6' => '9',
  '8' => '8',
  '9' => '6'
}.freeze

# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
  (1..n).count do |v|
    v = v.to_s
    next false if /[473]/.match?(v)

    v != v.chars.map { |c| ALPHABET[c] }.join
  end
end
