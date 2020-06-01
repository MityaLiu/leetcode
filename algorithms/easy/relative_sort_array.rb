# frozen_string_literal: true

# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  arr2.each_with_object([]) do |v, result|
    arr1.count(v).times { result << v }
  end + (arr1 - arr2).sort
end
