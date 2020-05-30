# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
  arr.sort.sort_by { |n| n.to_s(2).count('1') }
end
