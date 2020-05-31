# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  h = {}

  arr.uniq.sort.each_with_index do |num, i|
    h[num] = i + 1
  end

  arr.each_with_index do |num, i|
    arr[i] = h[num]
  end

  arr
end
