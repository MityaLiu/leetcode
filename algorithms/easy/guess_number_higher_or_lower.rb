# frozen_string_literal: true

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guess_number(n)
  (1..n).bsearch { |i| guess(i) }
end
