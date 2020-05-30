# frozen_string_literal: true

# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  num.positive? && check_factors(num)
end

private def check_factors(num)
  n = num

  until n == 1
    prev = n

    n /= 2 if n.even?
    n /= 3 if n % 3 == 0
    n /= 5 if n % 5 == 0

    return false if n == prev
  end

  true
end
