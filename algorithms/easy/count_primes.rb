# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def count_primes(n)
  return 0 if n < 2

  marks = Array.new(n, 1)

  2.upto(Math.sqrt(n)) do |i|
    next unless marks[i] == 1

    j = i

    while j + i < n
      j += i
      marks[j] = 0
    end
  end

  marks.sum - 2
end
