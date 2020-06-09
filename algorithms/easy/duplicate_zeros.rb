# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  i = 0

  while i < arr.size
    if arr[i].zero?
      arr.insert(i, 0)
      arr.pop
      i += 1
    end
    i += 1
  end
end
