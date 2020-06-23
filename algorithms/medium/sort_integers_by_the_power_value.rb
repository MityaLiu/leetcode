# frozen_string_literal: true

# @param {Integer} lo
# @param {Integer} hi
# @param {Integer} k
# @return {Integer}
def get_kth(lo, hi, k)
  (lo..hi).sort_by { |x| power_of_an_integer(x) }[k - 1]
end

private def power_of_an_integer(x)
  count = 0

  until x == 1
    x.even? ? x /= 2 : x = 3 * x + 1
    count += 1
  end

  count
end
