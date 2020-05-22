# frozen_string_literal: true

# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
  arr1.count do |el1|
    arr2.none? { |el2| (el1 - el2).abs <= d }
  end
end
