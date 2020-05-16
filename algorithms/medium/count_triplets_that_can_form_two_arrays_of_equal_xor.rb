# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Integer}
def count_triplets(arr)
  n = arr.length

  (0..n - 2).inject(0) do |count, i|
    xor = arr[i]
    (i + 1..n - 1).each do |k|
      xor ^= arr[k]
      count += k - i if xor == 0
    end
    count
  end
end
