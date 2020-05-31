# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  size = arr.size
  i = 0

  while i < size - 1
    subarray = arr[i + 1..-1]
    max = subarray.max
    index = i + 1 + subarray.index(max)
    arr[i..index-1] = [max] * (index - i)
    i = index
  end

  arr[-1] = -1

  arr
end
