# frozen_string_literal: true

# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  return false if num == 1

  sum = 1
  i = 2

  while i**2 <= num
    sum += i + (num / i) if (num % i).zero?
    i += 1
  end

  sum == num
end
