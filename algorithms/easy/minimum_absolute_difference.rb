# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  size = arr.size
  return [] if size < 2

  arr.sort!
  min = nil

  arr.each_with_index do |num, i|
    break if i == size - 1 || min == 1

    diff = arr[i + 1] - num

    min = diff if min.nil? || (diff > 0 && min > diff)
  end

  arr.each_with_object([]).with_index do |(num, result), i|
    next if i == size - 1

    diff = arr[i + 1] - num

    result << arr[i..i + 1] if diff == min
  end
end
