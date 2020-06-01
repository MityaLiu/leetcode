# frozen_string_literal: true

# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  frequencies = Hash.new(0)

  arr.each { |v| frequencies[v] += 1 }

  frequencies.values == frequencies.values.uniq
end
