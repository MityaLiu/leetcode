# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
  h = Hash.new(0)

  arr.each { |n| h[n] += 1 }

  h.max_by { |_k, v| v }[0]
end
