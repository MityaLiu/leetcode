# frozen_string_literal: true

# @param {Integer[]} a
# @return {Boolean}
def valid_mountain_array(a)
  return false if a.size < 3

  max = a.max
  i = a.index(max)
  left = a[0..i]
  right = a[i..-1]

  left.size > 1 && right.size > 1 && ascending?(left) && descending?(right)
end

private def ascending?(arr)
  arr == arr.sort.uniq
end

private def descending?(arr)
  arr == arr.sort_by(&:-@).uniq
end
