# frozen_string_literal: true

NUMS = {
  nil => 0,
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

# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  size = [num1.size, num2.size].max

  num1.reverse!
  num2.reverse!

  size.times.sum { |i| (NUMS[num1[i]] + NUMS[num2[i]]) * (10**i) }.to_s
end
