# frozen_string_literal: true

# @param {Integer} k
# @return {Integer}
def smallest_repunit_div_by_k(k)
  return -1 if k.even? || k % 5 == 0

  r = 0
  (1..k).each do |i|
    r = ((r * 10) + 1) % k

    return i if r.zero?
  end

  -1
end
