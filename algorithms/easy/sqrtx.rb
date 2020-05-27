# frozen_string_literal: true

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  return 0 if x < 1
  return 1 if x >= 1 && x <= 3

  s = 1
  e = x / 2

  while s <= e
    mid = (s + e) / 2

    return mid if mid * mid <= x && (mid + 1) * (mid + 1) > x

    if mid * mid < x
      s = mid + 1
    elsif mid * mid > x
      e = mid - 1
    else
      return mid
    end
  end
end
