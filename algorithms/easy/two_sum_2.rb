# frozen_string_literal: true

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  n1 = numbers.find { |n| numbers.include?(target - n) }
  a = numbers.index(n1) + 1
  b = numbers.index(target - n1) + 1
  if a == b
    [a, b + 1]
  else
    [a, b]
  end
end
