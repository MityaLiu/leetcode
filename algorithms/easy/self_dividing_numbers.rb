# frozen_string_literal: true

# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  (left..right).select { |num| self_dividing_number?(num) }
end

private def self_dividing_number?(num)
  digits = num.to_s.chars.map(&:to_i)

  return false if digits.include?(0)

  digits.all? { |d| num % d == 0 }
end
