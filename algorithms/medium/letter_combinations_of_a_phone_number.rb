# frozen_string_literal: true

# @param {String} digits
# @return {String[]}
DIALING_PAD = {
  '2' => %w[a b c],
  '3' => %w[d e f],
  '4' => %w[g h i],
  '5' => %w[j k l],
  '6' => %w[m n o],
  '7' => %w[p q r s],
  '8' => %w[t u v],
  '9' => %w[w x y z]
}.freeze

def letter_combinations(digits)
  digits.chars.inject([]) do |result, d|
    result.empty? ? DIALING_PAD[d] : multiply(result, DIALING_PAD[d])
  end
end

private def multiply(arr1, arr2)
  arr1.each_with_object([]) do |a1, result|
    arr2.each do |a2|
      result << (a1 + a2)
    end
  end
end
