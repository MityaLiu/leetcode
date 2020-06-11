# frozen_string_literal: true

# @param {Integer[]} a
# @return {Boolean}
def can_three_parts_equal_sum(a)
  s = a.sum
  divisor = 3

  return false if s % divisor != 0

  can_be_grouped?(a, s / divisor)
end

private def can_be_grouped?(a, target)
  count = 0
  accum = 0

  a.each do |i|
    accum += i

    if accum == target
      accum = 0
      count += 1
    end
  end

  count >= 3
end
