# frozen_string_literal: true

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  previous = [n]

  while n != 1
    n = transform(n)
    return false if previous.include?(n)

    previous << n
  end

  true
end

private def transform(num)
  num.to_s.chars.sum { |c| c.to_i**2 }
end
