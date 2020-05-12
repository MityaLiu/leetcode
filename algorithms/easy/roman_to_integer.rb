# frozen_string_literal: true

DICTIONARY = {
  'I'  => 1,
  'IV' => 4,
  'V'  => 5,
  'IX' => 9,
  'X'  => 10,
  'XL' => 40,
  'L'  => 50,
  'XC' => 90,
  'C'  => 100,
  'CD' => 400,
  'D'  => 500,
  'CM' => 900,
  'M'  => 1000
}.freeze

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  right = s.length - 1
  total = 0

  while right >= 0
    two_c_number = DICTIONARY[s[right - 1..right]]

    if right > 0 && two_c_number
      total += two_c_number
      right -= 2
    else
      total += DICTIONARY[s[right]]
      right -= 1
    end
  end

  total
end
