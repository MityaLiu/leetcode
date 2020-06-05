# frozen_string_literal: true

# The strategy is: always make sure you have the even number and give your opponent the odd number.
# When given an even number, always take the odd factor that resulting an odd result for your opponent

# @param {Integer} n
# @return {Boolean}
def divisor_game(n)
  n.even?
end
